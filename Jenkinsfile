pipeline {
    agent any 
    stages {
        stage('Unit Tests') {
            steps {
                bat 'cd win' 
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