from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

from . import config


db = SQLAlchemy()


def create_app():
    app = Flask(__name__)
    app.config.from_object(config.DevConfig)

    CORS(app)

    db.init_app(app)

    from .auth import auth_bp
    app.register_blueprint(auth_bp)

    from .main import main_bp
    app.register_blueprint(main_bp)

    with app.app_context():
        db.create_all()
        return app
