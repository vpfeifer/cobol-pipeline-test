pipeline {
    agent any
    environment {
        MAINPATH='C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test'
        SRCPRG='%MAINPATH%\\src\\SAMPLE.CBL'
        SOURCE='C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\src'
        TESTPRG='C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\TESTPRG.CBL'
        TESTNAME='TESTPRG'
        UTSTCFG='C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\resources\\SAMPLEC'
        UTESTS='C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\unit-tests\\SAMPLET'
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