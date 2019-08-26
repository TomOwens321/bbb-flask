import os
from flask import Flask
from .db import db
app = Flask(__name__, instance_relative_config=True)
app.config.from_mapping(
    SECRET_KEY='dev',
    DATABASE=os.path.join(app.instance_path, 'db/bbb.sqlite'),
)
db.init_app(app)
from app import routes
