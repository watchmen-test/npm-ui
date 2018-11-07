pipeline {
  agent {
    docker {
      image 'node:7-alpine'
    }

  }
  stages {
    stage('check container health') {
      steps {
        sh 'node --version'
      }
    }
  }
}