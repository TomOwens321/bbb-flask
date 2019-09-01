from flask import render_template
from .db import db
from app import app

@app.route('/')
@app.route('/index')
def index():
    return render_template('index.html')

@app.route('/xref')
def xref():
    query = 'SELECT * FROM creature_bugs;'
    data = db.query_db(query)
    return render_template('xref.html', data=data)

@app.errorhandler(404)
def page_not_found(e):
    return render_template("404.html"), 404