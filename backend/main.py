from flask import Flask , request
from flask_cors import CORS 
import hashlib

app = Flask(__name__)
CORS(app)
salt = "safepasswords" 

@app.route("/login" , methods = ["POST"])
def login_function(): 
        if request.method == "POST" : 
            username = request.args["username"]
            hash_code = username + salt 
            hash_code = hashlib.md5(hash_code.encode())
            
            hash_code = hash_code.hexdigest()
            hash_code = str(hash_code)
            return {'hashing' : hash_code}


@app.route("/register", methods = ["POST","GET"])
def new_user():
    if request.method == "POST":
        name = request.args["fname"]
        surname = request.args["lname"]
        age = request.args["age"]
        email = request.args["email"]
        passwd = request.args["passwd"]
        passwd = passwd + salt 
        passwd = str(hashlib.md5(passwd.encode()).hexdigest())
        return passwd

if __name__ == "__main__" : 
    app.run(debug=True)
