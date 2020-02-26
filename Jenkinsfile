pipeline {
  agent any
  stages {
    stage('Git Checkout') {
      steps {
        git(url: 'https://github.com/karthikeyancloud/new_maven.git', branch: 'Blue-Oean', credentialsId: 'abed1c81-a910-49f2-9fc0-4fa729c29491')
      }
    }

    stage('Build') {
      steps {
        echo 'Build starting'
        withMaven(jdk: 'jdk', maven: 'Maven', mavenSettingsConfig: 'f94fe716-8e70-4fb0-bee3-dc588597f4f2') {
          dir(path: '/var/lib/jenkins/workspace/new_maven_Blue-Ocean/') {
            sh 'mvn clean package'
            archiveArtifacts 'single-module/target/'
          }

        }

        echo 'Build Completed'
      }
    }

    stage('Docker image') {
      steps {
        echo 'Docker image creation'
        dir(path: '/var/lib/jenkins/workspace/') {
          sh 'docker build . -t alpine:2'
          echo 'image created succesfully'
        }

      }
    }

    stage('Dockerpush') {
      steps {
        sh 'docker login'
        sh 'docker push karthikeyan18/amazonlinux:firsttry'
      }
    }

  }
}