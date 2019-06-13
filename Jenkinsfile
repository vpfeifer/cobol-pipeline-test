pipeline {
    agent any
    environment {
        SRCPRG='c:\\projects\\cobol-pipeline-test\\src\\SAMPLE.CBL'
        SOURCE='c:\\projects\\cobol-pipeline-test\\src'
        TESTPRG='c:\\projects\\cobol-pipeline-test\\tests\\TESTPRG.CBL'
        TESTNAME='TESTPRG'
        UTSTCFG='c:\\projects\\cobol-pipeline-test\\tests\\resources\\SAMPLEC'
        UTESTS='c:\\projects\\cobol-pipeline-test\\tests\\unit-tests\\SAMPLET'
    } 
    stages {
        stage('Compile') {
            steps{
                bat 'cobc src/*.CBL -v'
            }
        }
        stage('Unit Tests') {
            steps {
                bat 'cobc -I src\\copy -conf=c:\\GnuCOBOL\\config\\ibm.conf -xv src\\ZUTZCPC.CBL'
                bat 'src\\ZUTZCPC'
                bat 'cobc -I src\\copy -xv tests\\TESTPRG.CBL'
                bat 'tests\\TESTPRG'
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