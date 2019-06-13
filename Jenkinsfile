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
                bat 'cobc -xv src\\ZUTZCPC.CBL'
                bat """
                    set MAINPATH=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test
                    set SRCPRG=%MAINPATH%\\src\\SAMPLE.CBL
                    set SOURCE=%MAINPATH%\\src
                    set TESTPRG=%MAINPATH%\\tests\\TESTPRG.CBL
                    set TESTNAME=TESTPRG
                    set UTSTCFG=%MAINPATH%\\tests\\resources\\SAMPLEC
                    set UTESTS=%MAINPATH%\\tests\\unit-tests\\SAMPLET
                    src\\ZUTZCPC
                    """
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