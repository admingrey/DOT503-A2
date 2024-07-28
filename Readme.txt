Build Script Instructions
=========================

This project includes a build script to automate the process of testing and packaging the application.

To run the build script, follow these steps:

1. Ensure you have Python installed on your system.
2. Ensure WinRAR is installed and added to your system PATH.
   - On Windows, you can download and install WinRAR from the official website.
   - Add the WinRAR installation directory (e.g., `C:\Program Files\WinRAR`) to the PATH environment variable (system variables).
3. Open VS Code and navigate to the project directory.
4. Open the integrated terminal in VS Code (`View` > `Terminal` or press `` Ctrl+` ``).
5. Make the build script executable (only necessary on Unix-like systems):
   chmod +x build_script.sh
6. Run the build script:
   ./build_script.sh

To run the scripts without the vs code installed, follow these steps:
1. Simply go to the project directory where it located.
1. Right-click in the project directory and select either "Open in Terminal", or "Git Bash", 
   and type "./build_script.ps1" for "Powershell" or "command prompt" then press Enter. 
   For "Git Bash" type "./build_script.sh" then press Enter.

The script will perform the following steps:
1. Run unit tests using the Python unittest framework.
2. If all tests pass, package the application into a RAR file named 'simple-app.rar'.

If any step fails, the script will terminate with an error message.

Prerequisites:
- Python 3.x
- WinRAR for packaging the application.

For any issues or questions, please contact the project admingrey and greydoogie.
