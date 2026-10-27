
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out project source code'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Checking Git and Docker versions'
                sh 'git --version'
                sh 'docker --version'
            }
        }

        stage('Test') {
            steps {
                echo 'Running project file checks'
                sh 'git status --short'
                sh 'test -f README.md'
                sh 'test -f Jenkinsfile'
                sh 'test -f docker/Dockerfile'
                sh 'test -f docker/validation/README.md'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building the project validation Docker image'
                sh 'docker build -t ai-ecommerce-devops-validation:1.0 -f docker/Dockerfile docker/validation'
            }
        }

        stage('Docker Validation') {
            steps {
                echo 'Running the validation image'
                sh 'docker run --rm ai-ecommerce-devops-validation:1.0'
                sh 'docker image inspect ai-ecommerce-devops-validation:1.0'
            }
        }

        stage('Validation') {
            steps {
                echo 'All project and Docker validation checks passed'
            }
        }
    }

    post {
        success {
            echo 'CI Pipeline completed successfully: Docker image built and tested'
        }
        failure {
            echo 'CI Pipeline failed. Review the Console Output for details.'
        }
    }
}

