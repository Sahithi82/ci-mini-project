pipeline {
  agent any
  stages {
    stage("Build") {
      steps { sh "docker build -t ci-mini-project:${BUILD_NUMBER} ." }
    }
    stage("Test") {
      steps { sh "docker run --rm ci-mini-project:${BUILD_NUMBER}" }
    }
  }
}
