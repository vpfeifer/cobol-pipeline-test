pipeline {
    agent any 
    stages {
        stage('Unit Tests') {
            steps {
                bat 'run-ut SAMPLEC SAMPLE SAMPLET'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy to mainframe' 
            }
        }
    }
}