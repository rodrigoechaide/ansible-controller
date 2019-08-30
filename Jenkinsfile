pipeline {
  agent any
  stages {
    stage('DockerfileLint') {
      agent any
      steps {
        sh 'make lint-dockerfile'
      }
    }
    stage('BuildImage') {
      steps {
        sh 'make build-image'
      }
    }
    stage('PushImage') {
      steps {
        sh 'make push-image'
      }
    }
  }
}