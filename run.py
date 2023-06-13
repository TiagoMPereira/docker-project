from flask import Flask

app = Flask(__name__)

@app.route("/", methods=["GET"])
def hello_world():
    return "Ola, estou na aplicação setada"


# export FLASK_APP=run.py
# flask run