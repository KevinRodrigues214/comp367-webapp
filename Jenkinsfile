pipeline {
    agent any

    tools {
        maven 'Maven'
    }

    environment {
        DOCKERHUB_PWD = credentials('dockerhub-pwd')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t kevinrodrigues21/comp367-app:1.0 .'
            }
        }

        stage('Docker Login') {
            steps {
                bat 'echo %DOCKERHUB_PWD% | docker login -u kevinrodrigues21 --password-stdin'
            }
        }

        stage('Docker Push') {
            steps {
                bat 'docker push kevinrodrigues21/comp367-app:1.0'
            }
        }
    }
}