Build Script Instructions
=========================

This project includes a build script to automate the process of testing and packaging the application.

To run the build script, follow these steps:

1. Ensure you have Python installed on your system.
2. Open a terminal or command prompt.
3. Navigate to the project directory.
4. Make the build script executable (only necessary on Unix-like systems):
   chmod +x build.sh
5. Run the build script:
   ./build_script.sh

The script will perform the following steps:
1. Run unit tests using the Python unittest framework.
2. If all tests pass, package the application into a zip file named 'simple-app.zip'.

If any step fails, the script will terminate with an error message.

Prerequisites:
- Python 3.x
- Unix-like systems may require 'zip' utility to create the zip package.

For any issues or questions, please contact the project admingrey or greydoggie.
