pipeline {
   agent any
      environment { 
        CC = 'clang'
    }    
   stages {
    stage('Database creation') {
         steps {
	    sh '''docker run -it --name crudsql --network=crudtest -e MYSQL_ROOT_PASSWORD=rg123 -e MYSQL_USER=root -e MYSQL__PASSWORD=rg123 -e MYSQL_DATABASE=springbootdb -d -p 3306:3306 mysql || true
	    docker ps
	    PATH=$PATH:/var/jenkins_home/tools/apache-maven-3.6.3/bin
            docker-compose up -d 
	    '''
         }
      }
    stage('Run Pro') {
         steps {
	    echo "complete"
         }
      }
    post { 
        failure { 
            sh 'docker image rm interim'
        }	
   }
}

