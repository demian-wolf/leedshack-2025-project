import os


class BaseConfig:
    SECRET_KEY = os.getenv("SECRET_KEY", "spameggfoobar")
    SALT = 14

    SQLALCHEMY_DATABASE_URI = "sqlite:///backend.db"


class DevConfig(BaseConfig):
    DEBUG = True


class ProdConfig(BaseConfig):
    DEBUG = False
