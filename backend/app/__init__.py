from flask import Flask
from flask_sqlalchemy import SQLAlchemy

from . import config


db = SQLAlchemy()


def create_app():
    app = Flask(__name__)
    app.config.from_object(config.DevConfig)

    db.init_app(app)

    from .auth import auth_bp
    app.register_blueprint(auth_bp)

    from .main import main_bp
    app.register_blueprint(main_bp)

    return app
