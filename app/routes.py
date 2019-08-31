from flask import render_template
from app import app
from .db import db

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/xref')
def xref():
    query = 'SELECT * FROM creature_bugs;'
    data = db.query_db(query)
    return render_template('xref.html', data=data)