from datetime import datetime,date,timedelta
from pytz import timezone
from sqlconnect import fetch_query, update_query
import calendar
# today_date_str = datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d')
# six_days = timedelta(days=6)

# year,month,day=map(int, today_date_str.split('-'))
# my_date = date(year,month,day)
# new_date = my_date + six_days
# print(type(new_date))
# print(today_date_str)
# print(str(new_date))

# end_dates_str = '2025-06-07'

# which_week = fetch_query(f"select week from tracker where end_date = '{end_dates_str}'")[0][0]
# print(which_week)
# print(type(which_week))
today_date_str = '2025-04-20'
days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
year,month,dayy = map(int, today_date_str.split('-'))
dayNumber = calendar.weekday(year,month,dayy+1)
print(f"{dayNumber}")
day = str(days[dayNumber])
print(f"my day  =   {day}")