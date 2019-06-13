pipeline {
    agent any
    environment {
        SRCPRG='C:\\Projects\\cobol-pipeline-test\\src\\SAMPLE.CBL'
        SOURCE='C:\\Projects\\cobol-pipeline-test\\src'
        TESTPRG='C:\\Projects\\cobol-pipeline-test\\tests\\TESTPRG.CBL'
        TESTNAME='TESTPRG'
        UTSTCFG='C:\\Projects\\cobol-pipeline-test\\tests\\resources\\SAMPLEC'
        UTESTS='C:\\Projects\\cobol-pipeline-test\\tests\\unit-tests\\SAMPLET'
    } 
    stages {
        stage('Compile') {
            steps{
                bat 'cobc src/*.CBL -v'
            }
        }
        stage('Unit Tests') {
            steps {
                echo env.SRCPRG
                bat 'cobc -xv src\\ZUTZCPC.CBL'
                bat 'src\\ZUTZCPC'
                bat 'cobc -I src\\copy -xv tests\\TESTPRG.CBL'
                bat 'tests\\TESTPRG > testResults.xml'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy to mainframe' 
            }
        }
    }
}