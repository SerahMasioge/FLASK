from flask import *
import pymysql
# initialize the application
app = Flask (__name__)

# define route/endpoint
@app.route("/api/signup", methods = ["POST"])

# define function
def signup():
    # Get user input from the form
    username = request.form["username"]
    email = request.form["email"]
    password = request.form["password"]
    phone = request.form["phone"]


    # connection to database
    connection = pymysql.connect(
        host ="root" ,
        user="localhost" ,
        password="" ,
        database ="modcomserah" )
         

   







#Run the application
app.run(debug=True)