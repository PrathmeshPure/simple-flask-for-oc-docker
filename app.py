# Shamelessly copied from http://flask.pocoo.org/docs/quickstart/

from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return 'index page!'

@app.route('/hello')
def hello_world():
    file=open('Dockerfile','r')
    line=file.read()
    return '<H1>Hello World!from docker<H1>'+'<br>'+line
    
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug = True)
