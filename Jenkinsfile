pipeline {
    agent any 
    stages {
        stage('Compile') {
            steps{
                bat 'cobc src/*.CBL -xv'
            }
        }
        stage('Unit Tests') {
            steps {
                bat 'set SRCPRG=c:\\projects\\cobol-pipeline-test\\src\\SAMPLE.CBL'
                bat 'set SOURCE=c:\\projects\\cobol-pipeline-test\\src'
                bat 'set TESTPRG=c:\\projects\\cobol-pipeline-test\\tests\\TESTPRG.CBL'
                bat 'set TESTNAME=TESTPRG'
                bat 'set UTSTCFG=c:\\projects\\cobol-pipeline-test\\tests\\resources\\SAMPLEC'
                bat 'set UTESTS=c:\\projects\\cobol-pipeline-test\\tests\\unit-tests\\SAMPLET'
                bat 'src\\ZUTZCPC'
                bat 'cobc -xv tests\\TESTPRG.CBL'
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