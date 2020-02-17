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
        sh '''sh \'mvn -f /var/lib/jenkins/workspace/Git_test/ test -DskipTests=true /*archieve\'archieve .jar\'*/\'
				sh \'mvn clean package\'
				echo \'BOP Module completed\'
				archiveArtifacts \'multi-module/server/target/*.jar\'
				sh \'cp multi-module/server/target/*.jar /var/lib/jenkins/workspace/target/\''''
      }
    }

  }
}