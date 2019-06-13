@echo off

set SRCPRG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\src\\SAMPLE.CBL
set SOURCE=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\src
set TESTPRG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\TESTPRG.CBL
set TESTNAME=TESTPRG
set UTSTCFG=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\resources\\SAMPLEC
set UTESTS=C:\\Program Files (x86)\\Jenkins\\workspace\\cobol-pipeline-test\\tests\\unit-tests\\SAMPLET

cobc -xv src\\ZUTZCPC.CBL

src\\ZUTZCPC

cobc -xv tests\\TESTPRG.CBL

cobc -I src\\copy -xv tests\\TESTPRG.CBL

tests\\TESTPRG