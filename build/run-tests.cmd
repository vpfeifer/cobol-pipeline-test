set "SRCPRG=..\src\SAMPLE.CBL"
set "SOURCE=%MAINSRC%"
set "TESTPRG=%TESTSRC%\TESTPRG.CBL"
set "TESTNAME=TESTPRG"
set "UTSTCFG=%CONFIGFILE%"
set "UTESTS=%UNITTESTFILE%"

%TARGET%\ZUTZCPC

if errorlevel 0 (
  if /I %SUBPROGRAM% equ true (
    goto testsubprogram
  ) else (
    goto testmainprogram  
  )  
)