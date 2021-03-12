from flask import render_template
from src import app
from os import path

INSTALACION_PATH = path.abspath(json)

@app.route('/')
def index():

    if(path.exists(INSTALACION_PATH)):
        return render_template('install.html')
    return render_template('index.html')