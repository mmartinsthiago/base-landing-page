#!/bin/bash

echo "🚀 Starting setup to landing page base ..."

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "⚠️ Installing npm ..."
    sudo apt update && sudo apt install -y npm
fi
npm install sass

# Check if php is installed
if ! command -v php &> /dev/null; then
    echo "⚠️ Installing php ..."
    sudo apt update && sudo apt install -y php
fi

echo "Creating blp.min.css ..."
sass --style=compressed css/blp.scss css/blp.min.css

echo "✅ Setup concluded succefully!"
