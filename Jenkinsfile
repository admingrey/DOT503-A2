pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/admingrey/DOT503-A2.git'
            }
        }

        stage('Build and Test') {
            steps {
                script {
                    sh '''
                    #!/bin/bash
                    # Step 1: Run Unit Tests
                    echo "Running unit tests..."
                    python -m unittest discover -s . -p "test_app.py"   
                    # if error occurs 'Python was not found', change 'python' -> 'python3', or vice versa.
                    if [ $? -ne 0 ]; then
                        echo "Unit tests failed. Exiting build."
                        exit 1
                    fi
                    '''
                }
            }
        }

        stage('Package') {
            steps {
                script {
                    sh '''
                    #!/bin/bash
                    # Step 2: Package the application
                    echo "Packaging the application..."
                    rar a output_simple-app.rar simple_app.py test_app.py
                    if [ $? -ne 0 ]; then
                        echo "Packaging failed. Exiting build."
                        exit 1
                    fi

                    echo "Build completed successfully!"
                    '''
                }
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed. Check the logs for details.'
        }
    }
}
