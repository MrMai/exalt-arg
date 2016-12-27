from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/hello")
def hello():
    return render_template("test.html")
@app.route("/")
def home():
    return "hello"

if __name__ == "__main__":
    app.run()
