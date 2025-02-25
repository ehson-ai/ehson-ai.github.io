pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ehson-ai/first-repository.git'  // 깃 저장소에서 코드 가져오기
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t myapp:latest .'  // Docker 이미지 빌드
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose down'  // 기존 컨테이너 종료
                sh 'docker-compose up -d'  // 새 컨테이너 실행
            }
        }
    }
}

