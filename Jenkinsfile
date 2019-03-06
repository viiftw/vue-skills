pipeline {
    agent { docker { image 'node:8.11' } }
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
              sh 'serve -s dist'
              // input message: 'Finished using the web site? (Click "Proceed" to continue)'
              echo 'Done...'
            }
        }
    }
}