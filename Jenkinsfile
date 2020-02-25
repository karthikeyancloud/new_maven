pipeline {
  agent any
  stages {
    stage('git') {
      steps {
        echo 'Hello'
      }
    }

    stage('Dockerpush') {
      steps {
        sh '''withCredentials([string(credentialsId: \'docker-pwd\', variable: \'dockerHubPwd\')]) {
		sh "docker login -u karthikeyan18 -p ${dockerHubPwd}"
		sh \'docker push karthikeyan18/pushimage:thirdtry\' 
}'''
        }
      }

    }
  }