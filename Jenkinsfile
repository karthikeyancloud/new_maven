pipeline {
  agent any
  stages {
    stage('Git') {
      steps {
        git(url: 'https://github.com/karthikeyancloud/new_maven', branch: 'Blue-Oean', credentialsId: 'abed1c81-a910-49f2-9fc0-4fa729c29491')
      }
    }

    stage('Build') {
      steps {
        withMaven(jdk: 'jdk', mavenSettingsConfig: 'f94fe716-8e70-4fb0-bee3-dc588597f4f2', mavenSettingsFilePath: 'Maven')
        sh '''sh \'mvn -f /var/lib/jenkins/workspace/Git_test/ test -DskipTests=true /*archieve\'archieve .jar\'*/\'
sh \'mvn clean package\''''
      }
    }

  }
}