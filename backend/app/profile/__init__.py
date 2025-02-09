from flask import Blueprint

from app.profile.views import ProfileView

profile_bp = Blueprint("profile", __name__)

profile_bp.add_url_rule(
    "/profile",
    view_func=ProfileView.as_view("profile_view"),
    methods=["GET", "POST"],
)
