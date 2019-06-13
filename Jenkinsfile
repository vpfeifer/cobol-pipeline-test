pipeline {
    agent any 
    stages {
        stage('Compile') {
            steps{
                bat 'cobc src/*.CBL -v'
            }
        }
        stage('Unit Tests') {
            steps {
                bat 'set SRCPRG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\src\\SAMPLE.CBL'
                bat 'set SOURCE=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\src'
                bat 'set TESTPRG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\TESTPRG.CBL'
                bat 'set TESTNAME=TESTPRG'
                bat 'set UTSTCFG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\resources\\SAMPLEC'
                bat 'set UTESTS=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\unit-tests\\SAMPLET'
                bat 'cobc -xv src\\ZUTZCPC.CBL'
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