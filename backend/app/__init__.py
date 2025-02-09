<<<<<<< HEAD
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS

from . import config

=======
import logging

from flask import Flask
from flask_sqlalchemy import SQLAlchemy

from . import config

logging.basicConfig(level=logging.INFO)
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0

db = SQLAlchemy()


def create_app():
    app = Flask(__name__)
    app.config.from_object(config.DevConfig)

<<<<<<< HEAD
    CORS(app)

=======
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
    db.init_app(app)

    from .auth import auth_bp
    app.register_blueprint(auth_bp)

    from .main import main_bp
    app.register_blueprint(main_bp)

<<<<<<< HEAD
    return app
=======
    with app.app_context():
        db.create_all()
        return app
>>>>>>> c556e87096233ab0e37b8a3c1bd40c7c2e00e7e0
