pipeline {
   agent any
      environment { 
        CC = 'clang'
    }    
   stages {
    stage('Database creation') {
         steps {
            sh '''docker run -it --name crudsql --network=crudtest -e MYSQL_ROOT_PASSWORD=rg123 -e MYSQL_DATABASE=springbootdb -d mysql || true
	    docker ps
	    PATH=$PATH:/var/jenkins_home/tools/apache-maven-3.6.3/bin
            mvn spring-boot:run'''
         }
      }
    stage('Run Pro') {
         steps {
	    echo "complete"
         }
      }
   }
}

