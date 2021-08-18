pipeline {
    agent any
 stages {
     stage('Docker Build and Tag') {
               steps {

                    sh 'docker build -t sailesh081/dockerhub_sailesh081:latest .'
                    sh 'docker tag sailesh081/dockerhub_sailesh081:latest sailesh081/dockerhub_sailesh081:$BUILD_NUMBER'
              }
            }
     
     stage('Publish image to Docker Hub') {

                steps {
            withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
              sh  'docker push sailesh081/dockerhub_sailesh081:$BUILD_NUMBER'
            }
         }
     }
     stage('Run Docker container on remote hosts') {

                steps {
            withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
              sh  'docker pull sailesh081/dockerhub_sailesh081:$BUILD_NUMBER'
              sh  'docker -H "ssh://vagrant@node1" run -d -p 85:80 --name=helloworld sailesh081/dockerhub_sailesh081:$BUILD_NUMBER'
            }
         }
         }
    
  }
}
