#!/bin/bash
# this code is intended to run from "Git Bash" 

# Step 1: Run Unit Tests
echo "Running unit tests..."
python -m unittest discover -s . -p "test_app.py"   
# if error occur 'Python was not found', change 'python' -> 'python3', or vice versa.
if [ $? -ne 0 ]; then
    echo "Unit tests failed. Exiting build."
    exit 1
fi

# Step 2: Package the application
echo "Packaging the application..."
rar a simple-app.rar simple_app.py test_app.py
if [ $? -ne 0 ]; then
    echo "Packaging failed. Exiting build."
    exit 1
fi

echo "Build completed successfully."
