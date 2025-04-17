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
    userlist = fetch_query("select userID from user_data")
    try: # handled couple of exceptions -- (KEVAL P.)
        for user in userlist:
            attendance_record_string = fetch_query(f"select attendance_time from attendance_tracker where userID = {user[0]}")[0][0]  #the [0][0] is just for formatting, it now returns string of attendance records seperated by comma
            attendance_record_list = attendance_record_string.split(',')[:-1] #ignoring last element cause in string of attendance_records_string it always ends with a comma, so the last element of the list split using comma will be an empty element. 
            if attendance_record_list ==[]:
                continue
            else:
                if datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d') in attendance_record_list[-1]:
                        return True
        return False
    except Exception as e:
        print(f"some error {e}")
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
    query = "SELECT attendance_time FROM attendance_tracker WHERE userID = %s"
    attendance_date = list(fetch_query(query, (user_id,))) # made it sql injection safeee
    dates_as_string = attendance_date[0][0]
    dates_as_list = dates_as_string.split(',')[:-1]
    date_pattern = r'\d{4}-\d{2}-\d{2}'
    filter_dates = [re.search(date_pattern, x).group(0) for x in dates_as_list if re.search(date_pattern, x)]
    for user_data in filter_dates[:10]:
        year,month,day = map(int, user_data.split('-'))
        dayNumber = calendar.weekday(year,month,day)
        the_day = str(days[dayNumber])
        day = str(day)
        combined_result = the_day + " -> " + day
        result.append(combined_result)
    return result