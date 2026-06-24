from flask import *

# initialize the application
app = Flask (__name__)

# Define route/endpoint
@app.route("/api/home")

# define function
def home():
    return jsonify({"message":"Welcome home"})

@app.route("/api/services")
def services():
    return jsonify({"message":"Welcome to services"})

@app.route("/api/about")
def about():
    return jsonify({"message":"Welcome to about"})

@app.route("/api/contact")
def contact():
    return jsonify({"message":"Contact us for more information "})

@app.route("/api/products")
def products():
    return jsonify({"message":"Products available"})

@app.route("/api/students")    
def students():
    return jsonify({"message":"List of students"})
    
@app.route("/api/courses")    
def courses():
    return jsonify({"message":"Courses Offered"})
        

@app.route("/api/teachers")    
def teachers():
    return jsonify({"message":"List of teachers"})

@app.route("/api/news")  
def news():
    return jsonify({"message":"Latest news updates"})  

@app.route("/api/gallery")    
def gallery():
    return jsonify({"message":"Gallery Images"})

@app.route("/api/faq")    
def faq():
    return jsonify({"message":"Frequently asked questions"})

@app.route("/api/profile")    
def profile():
    return jsonify({"message":"Students profile information"})
        
        
@app.route("/api/events")    
def events():
    return jsonify({"message":"Upcoming events"})

@app.route("/api/library")    
def library():
    return jsonify({"message":"Library resources available"})  

@app.route("/api/addition", methods = ["POST"])    
def addition():
    if request.method == "POST":
        num1 = request.form["num1"]
        num2 = request.form["num2"]
        sum = int(num1)+int(num2)
    return jsonify({"The answer is":sum})              

@app.route("/api/subtract", methods = ["POST"])    
def subtract():
    if request.method == "POST":
        num1 = request.form["num1"]
        num2 = request.form["num2"]
        difference = int(num1)-int(num2)
    return jsonify({"The answer is":difference})   

@app.route("/api/multiply", methods = ["POST"]) 
def multiply():
    num1 = request.form["num1"]  
    num2 = request.form["num2"]  
    product = int(num1) * int(num2)
    return jsonify({"Multiplication answer is": product})          


@app.route("/api/divide", methods = ["POST"]) 
def divide():
    num1 = request.form["num1"]  
    num2 = request.form["num2"]  
    answer = float(num1) / float(num2)
    return jsonify({"Division answer is": answer})          



# run the application
app.run(debug=True)
    





