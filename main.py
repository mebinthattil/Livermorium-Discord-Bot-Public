# imports
import discord
from discord.ui import button, View
from discord.ext import commands
from discord import Intents
import mysql.connector
from pytz import timezone 
from datetime import datetime, time
from sqlconnect import fetch_query, update_query
from discord.ext import commands, tasks
from helper import *


#setting temp dev vars
valid_time_check = False




#getting db credentials from locally stored secrets.txt ; this is a gitignored file and has the creds of the current machine
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


intents = Intents.default()
intents.message_content = True
client = discord.Client(intents=intents)
admins = [1247531982846689401,862890206054580244] # hmmm......

class SimpleView(View):

    def __init__(self, week : str, day : str):
        super().__init__()
        self.week = week
        self.day = day

    @button(label="Breakfast",style=discord.ButtonStyle.success)
    async def breakfast(self, interaction: discord.Interaction, button: discord.ui.Button):
        food_data = fetch_query(f"select BREAKFAST from {self.week} where DAY = '{self.day}'")[0][0]
        await interaction.response.send_message(f"For breakfast on {self.day} ({self.week}), you can have: {food_data}")
        
    @button(label="Lunch",style=discord.ButtonStyle.success)
    async def lunch(self, interaction: discord.Interaction, button: discord.ui.Button):
        food_data = fetch_query(f"select LUNCH from {self.week} where DAY = '{self.day}'")[0][0]
        await interaction.response.send_message(f"For lunch on {self.day} ({self.week}), you can have: {food_data}")

    @button(label="Snack",style=discord.ButtonStyle.success)
    async def snack(self, interaction: discord.Interaction, button: discord.ui.Button):
        food_data = fetch_query(f"select SNACKS from {self.week} where DAY = '{self.day}'")[0][0]
        await interaction.response.send_message(f"For snacks on {self.day} ({self.week}), you can have: {food_data}")

    @button(label="Dinner",style=discord.ButtonStyle.success)
    async def dinner(self, interaction: discord.Interaction, button: discord.ui.Button):
        food_data = fetch_query(f"select DINNER from {self.week} where DAY = '{self.day}'")[0][0]
        await interaction.response.send_message(f"For dinner on {self.day} ({self.week}), you can have: {food_data}")

class WeekChange(View):

    def __init__(self, end_date : str):
        super().__init__()
        self.end_date = end_date

    @button(label="WEEK-1",style=discord.ButtonStyle.success)
    async def week1(self, interaction: discord.Interaction, button: discord.ui.Button):
        mycursor.execute(f"UPDATE tracker SET week = 'week1' WHERE end_date = '{self.end_date}'")
        await interaction.response.send_message(f"changed succesfully to week1")
    
    @button(label="WEEK-2",style=discord.ButtonStyle.success)
    async def week2(self, interaction: discord.Interaction, button: discord.ui.Button):
        mycursor.execute(f"UPDATE tracker SET week = 'week2' WHERE end_date = '{self.end_date}'")
        await interaction.response.send_message(f"changed succesfully to week2")

    @button(label="WEEK-3",style=discord.ButtonStyle.success)
    async def week3(self, interaction: discord.Interaction, button: discord.ui.Button):
        mycursor.execute(f"UPDATE tracker SET week = 'week3' WHERE end_date = '{self.end_date}'")
        await interaction.response.send_message(f"changed succesfully to week3")

    @button(label="WEEK-4",style=discord.ButtonStyle.success)
    async def week4(self, interaction: discord.Interaction, button: discord.ui.Button):
        mycursor.execute(f"UPDATE tracker SET week = 'week4' WHERE end_date = '{self.end_date}'")
        await interaction.response.send_message(f"changed succesfully to week4")


#####################################################################            

@client.event
async def on_ready():
    print('Logged in as')
    print(client.user.name)
    print(client.user.id)
    print('------')
    attendance_reminder.start()

@client.event
async def on_message(message):

    #writing to logs
    f = open('logs.txt', 'a')
    if message.author == client.user:
        f.write("ANS: "+message.content+'\n\n\n')
        return
    else:
        if not message.content.startswith('!logs'):
            f.write("MSG: "+message.content+'\n')
            print(message.content)
    f.close()

    #ping to check if online
    if message.content.startswith('!ping'):
        await message.channel.send('Hello '+str(message.author.name)) 

    #registering user
    if message.content.startswith('!register'):
        mycursor = mydb.cursor()
        mycursor.execute(f"SELECT * FROM user_data WHERE userID = {message.author.id}")
        result = mycursor.fetchone()
        if result == None:
            mycursor.execute(f"INSERT INTO user_data (userID, username) VALUES ({message.author.id}, '{message.author.name}')")
            mycursor.execute(f"INSERT INTO attendance_tracker (userID, attendance_time, attendance_counter) VALUES ({message.author.id}, '', 0)")
            mydb.commit()
            await message.channel.send(str(message.author)+' You have been registered!')
        else:   
            await message.channel.send(str(message.author)+' You are already registered!')
    
    #attendance
    if message.content.startswith('!attendance'):

        #FIRST CHECK IF SENT IN TIME & IF NO ATTENDANCE GIVEN TODAY
        if (is_time_between(time(00,00), time(19,00) or valid_time_check ) and (not is_attendance_given_today())) : #corresponds to 6PM to 7PM
            mycursor = mydb.cursor()
            mycursor.execute(f"SELECT * FROM user_data WHERE userID = {message.author.id}")
            result = mycursor.fetchone()

            if result == None: #checking if user is registered
                await message.channel.send(str(message.author)+' You are not registered!')
            
            else: #this means user is registered
                mycursor.execute(f"SELECT * FROM attendance_tracker WHERE userID = {message.author.id}")
                result = mycursor.fetchone()
                
                def appended_data():
                        #ATTENDANCE COUNTER
                        mycursor = mydb.cursor()
                        india_time = datetime.now(timezone("Asia/Kolkata")).strftime('%Y-%m-%d %H:%M:%S.%f')
                        attendance_counter = fetch_query(f"SELECT attendance_counter FROM attendance_tracker WHERE userID = {message.author.id}")
                        if attendance_counter == []:
                            attendance_counter = 0
                        else:
                            attendance_counter = int(attendance_counter[0][0])# convert to integer
                        mycursor.close()

                        #TIME COUNTER
                        mycursor = mydb.cursor()
                        mycursor.execute(f"SELECT attendance_time FROM attendance_tracker WHERE userID = {message.author.id}")            
                        attendance_time = (mycursor.fetchone())
                        if attendance_time == None:
                            attendance_time = str(india_time) + ","
                        else:
                            attendance_time = attendance_time[0]+str(india_time)+","
                        mycursor.close()
                        mycursor = mydb.cursor()
                        return attendance_time, attendance_counter
                
                if result == None: #this means giving attendance for first time
                    attendance_time, attendance_counter = appended_data()
                    mycursor.execute("INSERT INTO attendance_tracker (userID, attendance_time, attendance_counter) VALUES (%s, %s, %s)", (message.author.id, attendance_time, attendance_counter+1))
                    mydb.commit()
                    await message.channel.send(str(message.author)+' Good job giving attendance! \n You have give attendance '+str(attendance_counter+1)+' times!')
                
                
                else:
                    attendance_time, attendance_counter = appended_data()
                    mycursor.close()
                    mycursor = mydb.cursor()
                    mycursor.execute(f"UPDATE attendance_tracker SET attendance_time = '{attendance_time}' WHERE userID = {message.author.id}")
                    mydb.commit()
                    mycursor.execute(f"UPDATE attendance_tracker SET attendance_counter = {attendance_counter+1} WHERE userID = {message.author.id}")
                    mydb.commit()

                    await message.channel.send(str(message.author)+' Good job giving attendance! \n You have give attendance '+str(attendance_counter+1)+' times!')

        else:
          if is_attendance_given_today():
                await message.channel.send("Attendance is already marked today")
          else:
                await message.channel.send("Chill out dude, its not even attendance time yet.")
            

    #logs for admins         
    if message.content.startswith('!logs'):
        if message.author.id in admins:
            with open("logs.txt", "r") as logs:
                log_content = logs.read()[-1900:]
                await message.channel.send(f"Logs:\n{log_content}")
        else:
            await message.channel.send(str(message.author)+" is not registered as an admin.")

    #attendance counter
    if message.content.startswith('!counter'):
        try:
            counter_number = int(fetch_query(f"select attendance_counter from attendance_tracker where userID = {message.author.id}")[0][0])
            await message.channel.send(f"Your attendance counter is {counter_number}")
            filtered_dates = attendance_to_the_date(message.author.id)
            await message.channel.send(f"and you have given attendance on {filtered_dates}")
            await message.channel.send("---------------------------------")
            userlist = fetch_query("select username, userID from user_data")
            try: # One exceptional case if only one person is in the attendace_tracker ka list it will handle -- (KEVAL P.)
                for name,id in userlist:
                    if id != message.author.id:
                        attendance_for_each_user = int(fetch_query(f"select attendance_counter from attendance_tracker where userID = {id}")[0][0])
                        filtered_dates = attendance_to_the_date(id)
                        await message.channel.send(f"{name} has given attendance {attendance_for_each_user+1} times on {filtered_dates}.")
            except Exception as e:
                print(f"The error is {e}. smth is wrong")
                await message.channel.send(f"Only {message.author} has given attendance till now")
        except IndexError:
            await message.channel.send(f"No body is in the database")
    
    if message.content.startswith('!food'):
        weeek, day = check_week()
        food_view = SimpleView(week=weeek, day=day)
        await message.channel.send(f"Kya chahiye re apko {day} {weeek}?", view=food_view) # adding a message option 

    if message.content.startswith('!update'):
        weeek, day = check_week() # this will update the neccesary information of the week in the week tracker
        end_dates_str = [x[0] for x in fetch_query("SELECT end_date FROM tracker")][-1] if fetch_query("SELECT end_date FROM tracker") else None
        updatess = WeekChange(end_date=end_dates_str)
        await message.channel.send(f"Nowadays {weeek} select the good one", view=updatess)


###########################################
'''  TASKS  ''' 

@tasks.loop(minutes=10) 
async def attendance_reminder():
    if is_time_between(time(18,30), time(19,00) ) and (not is_attendance_given_today()): # here time changed to (Kolkata/India) -- (KEVAL P.)
       userID = str(least_attendance_given_by())
       for guild in client.guilds:
            for channel in guild.text_channels:
                if channel.name == "attendance" and channel.permissions_for(guild.me).send_messages:
                    await channel.send(f"Attendance is not given today, please give it fast. <@{userID}> it would be good if you gave attendance today." )

client.run(token)