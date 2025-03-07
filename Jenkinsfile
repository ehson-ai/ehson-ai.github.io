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
                def sshUser = 'root'  // SSH 사용자 이름
                    
                sshagent(credentials: ['ecdd2210-808c-4d1c-b027-afb55047979b']) {
                for (server in servers) {
                     
                    sh """
                    ssh -o StrictHostKeyChecking=no ${root}@${server} 'cp /var/lib/jenkins/workspace/simple_test/first-repository/index.html /var/www/html/systemctl restart nginx'
                    #ssh root@${server} 'cp /var/lib/jenkins/workspace/simple_test/first-repository/index.html /var/www/html/ && systemctl restart nginx'
                    """
            
                #sh 'cp first-repository/index.html /var/www/html/'
                #sh 'sudo systemctl restart nginx'
            }
        }
     }
   }
  }
 }
}
