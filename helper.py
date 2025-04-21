from datetime import datetime, time
from pytz import timezone 
from sqlconnect import fetch_query, update_query
import re
import calendar

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
        dayNumber = calendar.weekday(year,month,day)
        the_day = str(days[dayNumber])
        day = str(day)
        combined_result = the_day + " -> " + day
        result.append(combined_result)
    return result