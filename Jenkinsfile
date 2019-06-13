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
                    set SRCPRG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\src\\SAMPLE.CBL
                    && set SOURCE=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\src
                    && set TESTPRG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\TESTPRG.CBL
                    && set TESTNAME=TESTPRG
                    && set UTSTCFG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\resources\\SAMPLEC
                    set UTESTS=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\unit-tests\\SAMPLET
                    && src\\ZUTZCPC
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