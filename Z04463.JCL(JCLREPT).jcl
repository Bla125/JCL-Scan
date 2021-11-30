//JCLREPT   JOB 1,NOTIFY=&SYSUID,MSGLEVEL=(1,1)
//***********************************************/
//RUNREXX   EXEC PGM=IKJEFT01,PARM='RXJCLSCN'
//SYSEXEC     DD DSN=Z04463.SOURCE,DISP=SHR
//SYSTSPRT    DD SYSOUT=*
//SYSTSIN     DD DUMMY
//***********************************************/
// IF RC = 0 THEN
//***********************************************/
//IGYCOBAL   EXEC IGYWCL,PARM=('LIST','NOOFFSET')
//COBOL.SYSIN  DD DSN=Z04463.SOURCE(CBLJCLRP),DISP=SHR
//LKED.SYSLMOD DD DSN=Z04463.LOAD(CBLJCLRP),DISP=SHR
//***********************************************/
// ELSE
// ENDIF
//***********************************************/
// IF RC = 0 THEN
//***********************************************/
//RUNCOBAL   EXEC PGM=CBLJCLRP
//STEPLIB      DD DSN=Z04463.LOAD,DISP=SHR
//PRTIN        DD DSN=Z04463.OUTPUT(JOBDATA),DISP=SHR
//PRTOUT       DD DSN=Z04463.OUTPUT(JOBDATAS),DISP=SHR,OUTLIM=15000
//SYSOUT       DD SYSOUT=*,OUTLIM=15000
//CEEDUMP      DD SYSOUT=*,OUTLIM=15000
//SYSUDUMP     DD SYSOUT=*,OUTLIM=15000
//***********************************************/
// ELSE
// ENDIF
