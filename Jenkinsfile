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
                sh 'ls -l /home/git_test'  // Dockerfile이 있는지 확인
                sh 'python -m pip install -r requirements.txt'
                #sh 'cd /home/git_test && docker build -t myapp:latest .'  // 지정된 작업 디렉토리에서 실행
                #sh 'cd /home/git_test && docker-compose up -d --build'  // docker-compose
                }
        }
        stage('Test') {
            steps {
                sh 'python -m pytest tests/'
            }
        }
        stage('Deploy') {
            steps {
                sh 'python deploy_script.py'
                #sh 'docker-compose down'  // 기존 컨테이너 종료
                #sh 'docker-compose up -d'  // 새 컨테이너 실행
            }
        }
    }
}

