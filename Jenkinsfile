pipeline {
    agent {
        docker {
            image 'python:3.8'  // 실행할 Docker 이미지
        }
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo.git'
            }
        }
        stage('Build') {
            steps {
                sh 'python --version'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest tests/'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker build -t myapp:latest .'
                sh 'docker run -d -p 8080:8080 myapp:latest'
            }
        }
    }
}

