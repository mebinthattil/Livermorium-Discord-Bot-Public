from datetime import datetime, time, date, timedelta
from pytz import timezone 
from sqlconnect import fetch_query, update_query
import re
import calendar
import mysql.connector

myfile = open("secrets.txt", 'r')
secret_file_contents = myfile.read().split('\n')
database_user, database_pwd, token = secret_file_contents[:3]
myfile.close()

mydb = mysql.connector.connect(
  host="localhost",
  user=database_user,
  passwd=database_pwd,
  database="livermorium-discord-bot",
  autocommit=True
)
mycursor = mydb.cursor()


def get_userID(username : str):
    '''
    Gets userid given public display username
    '''
    userlist = fetch_query("select userID, username from user_data")
    print(userlist)
    for i in userlist:
        if i[1] == username:
            return i[0]
    return None

def is_time_between(begin_time, end_time, check_time=None):
    '''
    Checks if given time in between (begin_time, end_time)
    '''
    tz = timezone("Asia/Kolkata") # updated to timezone to kolkata so now only have to enter indian standard time --(KEVAL P.)
    if check_time is None:
        check_time = datetime.now(tz).time()
    if begin_time < end_time:
        return check_time >= begin_time and check_time <= end_time
    else: # if it crosses midnight
        return check_time >= begin_time or check_time <= end_time
    
def is_attendance_given_today():
    '''
    
    This function collects infromation of userID and Time from attendance_tracker table of database and then compare s it with today s date
    and provide data if the user has given attendance or not, thats all
    
    '''
    try:
        attendance_record = fetch_query("SELECT userID, attendance_time FROM attendance_tracker") 
        if not attendance_record:
            return False
        else:
            for user_id, time in attendance_record:
                today_time=datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d')
                for_check_time = time.split(',')[:-1]
                date_data = list(map(lambda s: datetime.strptime(s, '%Y-%m-%d %H:%M:%S.%f').strftime('%Y-%m-%d'), for_check_time))
                if date_data == []:
                    continue
                else:
                    if today_time in date_data:
                        return True
    except Exception as e:
        print(f"Some error: {e}")
        return False


def attendance_counter(userID):
    return fetch_query(f"select attendance_counter from attendance_tracker where userID = {userID}")[0][0]

def least_attendance_given_by():
    userlist = fetch_query("select userID, attendance_counter from attendance_tracker")
    userlist.sort(key=lambda x: x[1])
    return userlist[0][0]

def attendance_to_the_date(user_id):
    result = []
    days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    attendance_date = list(fetch_query(f"SELECT attendance_time FROM attendance_tracker WHERE userID = {user_id}")) # made it sql injection safeee
    dates_as_string = attendance_date[0][0]
    dates_as_list = dates_as_string.split(',')[:-1]
    date_pattern = r'\d{4}-\d{2}-\d{2}'
    filter_dates = [re.search(date_pattern, x).group(0) for x in dates_as_list if re.search(date_pattern, x)]
    for user_data in filter_dates[:7]:
        year,month,day = map(int, user_data.split('-'))
        dayNumber = calendar.weekday(year,month,day+1)
        the_day = str(days[dayNumber])
        day = str(day)
        combined_result = the_day + " -> " + day
        result.append(combined_result)
    return result

def check_week():
    
    end_dates_str = [x[0] for x in fetch_query("SELECT end_date FROM tracker")][-1] if fetch_query("SELECT end_date FROM tracker") else None
    today_date_str = datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d')

    if end_dates_str is None: # here add auto date and week adder function
        return None, None
    
    days = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
    year,month,dayy = map(int, today_date_str.split('-'))
    dayNumber = calendar.weekday(year,month,dayy)
    day = str(days[dayNumber])
    
    try:
        end_date = datetime.strptime(end_dates_str, '%Y-%m-%d')
        today_date = datetime.strptime(today_date_str, '%Y-%m-%d')
    except Exception as e:
        print(f"Some error: {e}")
        return None, None, None # week day fooditem

    if (end_date >= today_date):
        which_week = fetch_query(f"select week from tracker where end_date = '{end_dates_str}'")[0][0]
        return which_week, day

    elif(end_date < today_date):

        six_days = timedelta(days=6)
        one_day = timedelta(days=1)
        weeks = ['week1','week2','week3','week4']
        this_week = fetch_query(f"select week from tracker where end_date = '{end_dates_str}'")[0][0]
        week = weeks.index(this_week)
        while (end_date<today_date):
            week = (week + 1) % len(weeks)
            week_to_insert = weeks[week]
            year,month,dayy=map(int, end_dates_str.split('-'))
            start_date_prv = date(year,month,dayy)
            start_date = start_date_prv + one_day
            end_date = start_date + six_days
            end_dates_str = str(end_date)
            start_date_str = str(start_date)
            mycursor.execute(f"INSERT INTO tracker (start_date,end_date,week) VALUES ('{start_date_str}','{end_dates_str}','{week_to_insert}')")
            end_date = datetime.strptime(end_dates_str, '%Y-%m-%d')

        which_week = fetch_query(f"select week from tracker where end_date = '{end_dates_str}'")[0][0]
        return which_week, day
    
def laundry_day(loop=None):
    today_date_str = datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d')
    days = ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"]
    year,month,dayy = map(int, today_date_str.split('-'))
    dayNumber = calendar.weekday(year,month,dayy)
    day = str(days[dayNumber])
    if loop:
        if day == "MON" or day == "THU":
            return "TAKE"
        elif day ==  "TUE" or day == "FRI":
            return "GIVE"
        else:
            return None
    else:  
        if day ==  "SAT" or day == "SUN" or day == "WED":
            return False
        else:
            return True