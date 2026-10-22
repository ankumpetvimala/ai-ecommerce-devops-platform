
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checkout stage started'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Build stage started'
                sh 'git --version'
                sh 'docker --version'
            }
        }

        stage('Test') {
            steps {
                echo 'Test stage started'
                sh 'git status'
            }
        }

        stage('Validation') {
            steps {
                echo 'Validation stage started'
                sh 'if exist Jenkinsfile (echo Jenkinsfile found) else (exit /b 1)'
            }
        }
    }

    post {
        success {
            echo 'CI Pipeline completed successfully'
        }
        failure {
            echo 'CI Pipeline failed. Check Console Output.'
        }
    }
}
