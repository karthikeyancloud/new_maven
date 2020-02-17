pipeline {
  agent any
  stages {
    stage('Git Clone') {
      steps {
        git(url: 'https://github.com/karthikeyancloud/new_maven', branch: 'master', credentialsId: 'f56ad8c20376dfc6a1084f4254f728131a80296f')
      }
    }

  }
}