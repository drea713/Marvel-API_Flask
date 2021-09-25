from app import app
# from flask import render_template
# from app.models import Post

@app.route('/')
def home():
    return 'home page'

