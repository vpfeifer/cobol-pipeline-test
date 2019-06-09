pipeline {
    agent any 
    stages {
        stage('Compile') {
            steps{
                bat 'compile SAMPLE'
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