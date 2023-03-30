from distutils.log import debug
from flask import Flask
from flask import request
import datetime

app = Flask(__name__)
@app.route('/', methods=['GET'])
def status():
    return "status: ok"

if __name__ == '__main__':
    # a = Authenticate()
    # m = Mail()
    # sudoPW = getpass()

    app.run("0.0.0.0", debug=True)
