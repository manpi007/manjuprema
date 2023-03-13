pipeline {
    agent any
environment{
    PATH="/opt/apache-maven-3.9.0/bin:$PATH"
}
     stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
        stage('scm') {
            steps {
               git 'https://github.com/manpi007/hello-world.git' 
            }
        }
        stage('bulid') {
            steps {
               sh "mvn package"
            }
        }
      
    }
}
