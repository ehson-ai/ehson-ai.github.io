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
        stage('Deploy to Servers') {
            steps {
                script {
                def servers = ['8.220.246.38', '8.220.223.133']  // 배포할 서버 목록
                
                for (server in servers) {
                    sh """
                    ssh ${server} 'cp /var/lib/jenkins/workspace/simple_test/first-repository/index.html /var/www/html/
                    systemctl restart nginx'
                    
                    #scp first-repository/index.html root@${server}:/var/www/html/  # 🔧 root 계정 사용
                    #ssh root@${server} 'systemctl restart nginx'  # 🔧 root 계정으로 직접 실행
                    """
            
                #sh 'cp first-repository/index.html /var/www/html/'
                #sh 'sudo systemctl restart nginx'
            }
        }
    }
  }
 }
}
