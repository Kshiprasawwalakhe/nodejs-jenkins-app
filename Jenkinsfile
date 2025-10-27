pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'nodejs-jenkins-app:latest'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Kshiprasawwalakhe/nodejs-jenkins-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat "docker build -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Run Docker Container') {
            steps {
                bat "docker rm -f nodejs-jenkins-container || true"
                bat "docker run -d --name nodejs-jenkins-container -p 8080:8080 ${DOCKER_IMAGE}"
            }
        }
    }

    post {
        success {
            echo '✅ Node.js app built and running successfully in Docker!'
        }
        failure {
            echo '❌ Build failed — check console output.'
        }
    }
}
