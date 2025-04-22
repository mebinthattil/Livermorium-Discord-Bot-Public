import mysql.connector

#connecting to db
myfile = open("secrets.txt", 'r')
secret_file_contents = myfile.read().split('\n')
database_user, database_pwd, token = secret_file_contents[:3]
myfile.close()

mydb = mysql.connector.connect(
  host="localhost",
  user=database_user,
  passwd=database_pwd,
  database="livermorium-discord-bot",
  autocommit=True # very nice line, upadates stuff instantly
)

def fetch_query(query):
    mycursor = mydb.cursor()
    mycursor.execute(query)
    result = mycursor.fetchall()
    mycursor.close()
    return list(result)

def update_query(query):
    mycursor = mydb.cursor()
    mycursor.execute(query)
    mydb.commit()
    mycursor.close()
    return None

def attendance_counter(userID):
    return fetch_query(f"select attendance_counter from attendance_tracker where userID = {userID}")[0][0]

