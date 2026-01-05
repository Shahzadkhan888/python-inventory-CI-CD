pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Jenkins pulls the latest code from your GitHub
                checkout scm
            }
        }

        stage('Docker Build') {
            steps {
                // Jenkins builds the image using the Dockerfile
                bat 'docker build -t inventory-app-image .'
            }
        }

        stage('Execute Script') {
            steps {
                // Jenkins runs the container to process the Excel data
                bat 'docker run --rm inventory-app-image'
            }
        }
    }
}