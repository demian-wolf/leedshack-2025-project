from flask import Blueprint
from . import db

main_bp = Blueprint("main", __name__)

@main_bp.route("/")
def index():
    return "hello world"


@main_bp.route("/profile")
def profile():
    return "profile stub"
