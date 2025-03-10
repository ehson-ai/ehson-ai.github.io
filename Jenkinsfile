pipeline {
    agent any
    stages {
        stage('Clean Workspace') {
    steps {
        sh 'rm -rf *'  // 모든 파일 삭제 후 새롭게 클론
             }
        }
    }        
     stage('Git Update') {
            steps {
                script {
                    if (fileExists('first-repository')) {
                        dir('first-repository') {
                            sh 'git fetch --all'
                            sh 'git reset --hard origin/main'  // 최신 버전으로 강제 동기화
                            sh 'git pull origin main
                        }
                    } else {
                        sh 'git clone https://github.com/ehson-ai/first-repository.git'
                    }
                }
            }
        }
        stage('Deploy to Servers') {
            steps {
                script {
                def servers = ['8.220.246.38', '8.220.223.133']  // 배포할 서버 목록
                def sshUser = 'root'  // SSH 사용자 이름
                    
                sshagent(credentials: ['ecdd2210-808c-4d1c-b027-afb55047979b']) {
                for (server in servers) {

                sh """
                ssh -o StrictHostKeyChecking=no root@${server} << EOF
                cp /var/lib/jenkins/workspace/simple_test/first-repository/index.html /var/www/html/
                systemctl restart nginx
                EOF
                """
            }
        }
     }
   }
  }
 }
}
