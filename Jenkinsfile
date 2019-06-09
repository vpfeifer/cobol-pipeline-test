pipeline {
    agent any 
    stages {
        stage('Compile') {
            steps{
                bat 'cobc src/SAMPLE.CBL'
            }
        }
        stage('Unit Tests') {
            steps {
                bat 'run-ut SAMPLEC SAMPLE SAMPLET > testResults.xml'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy to mainframe' 
            }
        }
    }
}