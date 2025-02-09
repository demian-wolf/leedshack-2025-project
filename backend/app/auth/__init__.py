from flask import Blueprint

from app.auth.views import SignUpView, LogInView, LogOutView

auth_bp = Blueprint("auth", __name__)

auth_bp.add_url_rule(
    "/auth/signup",
    view_func=SignUpView.as_view("signup_view"),
    methods=["POST"],
)

auth_bp.add_url_rule(
    "/auth/login",
    view_func=LogInView.as_view("login_view"),
    methods=["POST"],
)

auth_bp.add_url_rule(
    "/auth/logout",
    view_func=LogOutView.as_view("logout_view"),
    methods=["POST"],
)
