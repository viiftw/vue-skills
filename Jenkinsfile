pipeline {
    agent {
      docker { 
        image 'node:8.11'
        args '-p 5000:5000' 
      } 
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Install') {
            steps {
                sh 'npm install'
                sh 'npm install -g serve'
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
              sh 'chmod 777 ./scripts/deliver.sh'
              sh 'chmod 777 ./scripts/kill.sh'
              sh './scripts/deliver.sh'
              input message: 'Finished using the web site? (Click "Proceed" to continue)'
              sh './scripts/kill.sh'
              echo 'Done...'
            }
        }
    }
}