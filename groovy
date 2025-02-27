pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/ehson-ai/first-repository.git' // Git 저장소 URL을 수정하세요.
            }
        }
        stage('Test') {
            steps {
                sh './gradlew clean test'
            }
        }
    }
}
