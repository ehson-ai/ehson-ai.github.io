pipeline {
    agent any
    stages {
        stage('Git Clone') {
            steps {
                git 'https://github.com/ehson-ai/first-repository.git'
                git fetch --all
                git reset --hard origin/main
                git pull origin main
            }
        }
        stage('Deploy') {
            steps {
                #sh 'chmod +x build_script.sh'
                #sh './build_script.sh'
                sh 'cp index.html /var/www/html/'
                sh 'sudo systemctl restart nginx'
            }
        }
    }
}
