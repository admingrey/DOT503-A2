# this code is intended to run from "Powershell" terminal or command prompt

# Step 1: Run Unit Tests
Write-Output "Running unit tests..."
python -m unittest discover -s . -p "test_app.py"
if ($LASTEXITCODE -ne 0) {
    Write-Output "Unit tests failed. Exiting build."
    exit 1
}

# Step 2: Package the application
Write-Output "Packaging the application..."
& "C:\Program Files\WinRAR\rar.exe" a output_simple-app.rar simple_app.py test_app.py
if ($LASTEXITCODE -ne 0) {
    Write-Output "Packaging failed. Exiting build."
    exit 1
}

Write-Output "Build completed successfully."
