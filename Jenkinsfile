
pipeline {
    agent any

    parameters {
        choice(
            name: 'DEPLOY_ENV',
            choices: ['dev', 'test', 'prod'],
            description: 'Select deployment environment'
        )
        booleanParam(
            name: 'RUN_TESTS',
            defaultValue: true,
            description: 'Run health-check tests'
        )
    }

    environment {
        APP_NAME = 'Jenkins-DevOps-Lab'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building ${env.APP_NAME}"
                echo "Target environment: ${params.DEPLOY_ENV}"
            }
        }

        
stage('Environment Info') {
    steps {
        echo "Application: ${env.APP_NAME}"
        echo "Job Name: ${env.JOB_NAME}"
        echo "Build Number: ${env.BUILD_NUMBER}"
        echo "Workspace: ${env.WORKSPACE}"
        echo "Selected Environment: ${params.DEPLOY_ENV}"
    }
}

stage('Credentials Verification') {
    steps {
        withCredentials([
            string(
                credentialsId: 'lab7-demo-secret',
                variable: 'LAB_SECRET'
            )
        ]) {
            sh '''
                if [ -n "$LAB_SECRET" ]; then
                    echo "Jenkins credential loaded successfully"
                else
                    echo "Credential is empty"
                    exit 1
                fi
            '''
        }
    }
}

        
        stage('Test') {
            when {
                expression { params.RUN_TESTS }
            }
            steps {
                sh 'bash -n health-check.sh'
                sh 'bash health-check.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo "Simulating deployment to ${params.DEPLOY_ENV}"
                echo 'No production resources are modified.'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Review console output.'
        }
    }
}
