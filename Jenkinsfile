pipeline {
  agent any
  environment {
     registry = "okip/devops-ci"
     registryCredential = 'docker_user'
   }
   stages {
      stage('Building Image') {
        steps {
          script {
            docker.build registry + ":$BUILD_NUMBER" 
         }
       }
     }
      stage ('Pushing to Docker') {
         steps {
          script {
            docker.withRegistry( '', registryCredential ) {
           }
         }
       }
     }
      stage ('Deploy to Docker') {
        steps {
          script {
            sh 'docker push okip/devops-ci' + ":$BUILD_NUMBER"
         }
       }
     }
   }
}
