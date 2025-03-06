pipeline {
    agent any
    stages {
        stage('Git Update') {
            steps {
                script {
                    if (fileExists('first-repository')) {
                        dir('first-repository') {
                            sh 'git reset --hard'
                            sh 'git pull origin main'
                        }
                    } else {
                        sh 'git clone https://github.com/ehson-ai/first-repository.git'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'cp first-repository/index.html /var/www/html/'
                sh 'sudo systemctl restart nginx'
            }
        }
    }
}
