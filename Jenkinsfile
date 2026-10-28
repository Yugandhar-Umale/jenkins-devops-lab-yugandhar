
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Build stage completed"'
            }
        }

        stage('Test') {
            steps {
                sh 'bash -n health-check.sh'
                sh 'bash health-check.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo "Demo deployment successful"'
            }
        }
    }
}
