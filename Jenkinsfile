pipeline {
    agent { docker { image 'node:6.3' } }
    environment {
        CI = 'true'
    }
    stages {
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
          steps {
              sh 'npm run test'
          }
        }
        stage('Build') {
          steps {
              sh 'npm run build'
          }
        }
        stage('Deliver') {
            steps {
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}