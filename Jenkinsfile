pipeline {
    agent any
    stages {
        stage('Git Clone') {
            steps {
                git 'https://github.com/ehson-ai/first-repository.git'
            }
        }
        stage('Deploy') {
            steps {
                sh 'cp index.html /var/www/html/'
                sh 'sudo systemctl restart nginx'
            }
        }
    }
}
