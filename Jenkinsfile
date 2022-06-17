pipeline {
  agent any
  environment {
     registry = "okip/devops-ci"
     registryCredential = 'docker_user'
   }
   stages {
      stage('Deploy'){
        steps {
          script {
            docker.build registry + ":$BUILD_NUMBER"
         }
       }
     }
   }
}
