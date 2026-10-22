
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
            }
        }

        stage('Test') {
            steps {
                echo 'Test stage started'
                sh 'git status'
                sh 'test -f README.md'
            }
        }

        stage('Validation') {
            steps {
                echo 'Validation stage started'
                sh 'test -f Jenkinsfile'
                sh 'echo "README.md and Jenkinsfile validation passed"'
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
