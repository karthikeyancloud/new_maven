pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      steps {
        git(url: 'https://github.com/karthikeyancloud/new_maven', branch: 'Blue-Oean', credentialsId: 'abed1c81-a910-49f2-9fc0-4fa729c29491')
      }
    }

    stage('Build') {
      steps {
        echo 'Build starting'
        withMaven(jdk: 'jdk', maven: 'Maven', mavenSettingsConfig: 'f94fe716-8e70-4fb0-bee3-dc588597f4f2') {
          dir(path: '/var/lib/jenkins/workspace/Git_test/') {
            sh 'mvn clean package'
            archiveArtifacts 'single-module/target/'
          }

          dir(path: '/multi-module/server/target/') {
            sh 'sh ls'
          }

        }

        echo 'Build Completed'
      }
    }

  }
}