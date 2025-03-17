from datetime import datetime, time
from pytz import timezone 
from sqlconnect import fetch_query, update_query

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
    check_time = check_time or datetime.utcnow().time()
    if begin_time < end_time:
        return check_time >= begin_time and check_time <= end_time
    else: # crosses midnight
        return check_time >= begin_time or check_time <= end_time
    
def is_attendance_given_today():
    return False
    userlist = fetch_query("select userID from user_data")
    for user in userlist:
        attendance_record_string = fetch_query(f"select attendance_time from attendance_tracker where userID = {user[0]}")[0][0]  #the [0][0] is just for formatting, it now returns string of attendance records seperated by comma
        attendance_record_list = attendance_record_string.split(',')[:-1] #ignoring last element cause in string of attendance_records_string it always ends with a comma, so the last element of the list split using comma will be an empty element. 
        if attendance_record_list ==[]:
            continue
        else:
            if datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d') in attendance_record_list[-1]:
                    return True
    return False


def attendance_counter(userID):
    return fetch_query(f"select attendance_counter from attendance_tracker where userID = {userID}")[0][0]

def least_attendance_given_by():
    userlist = fetch_query("select userID, attendance_counter from attendance_tracker")
    userlist.sort(key=lambda x: x[1])
    return userlist[0][0]
