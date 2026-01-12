pipeline {
    agent any

    environment {
        DOCKER_USER = 'shahzadk1'
        IMAGE_NAME  = 'python-inventory-app'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Docker Build') {
            steps {
                bat "docker build -t %DOCKER_USER%/%IMAGE_NAME%:latest ."
            }
        }

        stage('Login and Push') {
            steps {
                // 'docker-hub-creds' is the ID you created in Jenkins
                withCredentials([usernamePassword(credentialsId: 'docker-hub-creds',
                                                 passwordVariable: 'PASS',
                                                 usernameVariable: 'USER')]) {

                    // Windows 'bat' uses % for variables
                    bat "docker login -u %USER% -p %PASS%"
                    bat "docker push %DOCKER_USER%/%IMAGE_NAME%:latest"
                }
            }
        }

        stage('Execute Script') {
            steps {
                // Running the container using the official cloud name
                bat "docker run --rm %DOCKER_USER%/%IMAGE_NAME%:latest"
            }
        }
    }
}