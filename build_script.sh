
# Step 1: Run Unit Tests
echo "Running unit tests..."
python3 -m unittest discover -s . -p "test_*.py"
if [ $? -ne 0 ]; then
    echo "Unit tests failed. Exiting build."
    exit 1
fi

# Step 2: Package the application
echo "Packaging the application..."
zip -r simple-app.zip simple_app.py test_app.py
if [ $? -ne 0 ]; then
    echo "Packaging failed. Exiting build."
    exit 1
fi

echo "Build completed successfully."
