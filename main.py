import os

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    print("test")
    return os.getenv('MYSQL_PASSWORD')
