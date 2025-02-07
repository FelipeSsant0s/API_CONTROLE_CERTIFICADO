#!/bin/bash
# exit on error
set -o errexit

# Install Python dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Initialize database
python << END
from app import db, app
with app.app_context():
    db.create_all()
END