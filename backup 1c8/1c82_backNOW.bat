chcp 1251
@echo off
cls

rem  *******************************************************************
rem  ������ ����������
rem  *******************************************************************

set localdrive=c:
set remotedrive=n:
set localfoldertemp=1c82backup
set v8exe=%localdrive%\Program Files\1cv82\8.2.19.83\bin\1cv8.exe
set ip1C=10.255.254.3
set user1C=backup
set pass1C=avt747556
set remotefolderSMB=\\10.255.254.2\backup\1c\1c8.2
set userSMB=mousesport
set passSMB=avt747556
set log=%localdrive%\%localfoldertemp%\backup1�82.log

set say_killallremotedrive=��������� ��� ������� ����� ��� ���������� �������� �� ����� ����������� ����������
set say_connectdrive=���������� ������� ����
set say_killusersDB=������� ������������� � ������ ���������� �� ��
set say_createDtfile=������ .dt ����
set say_unlockDB=������ ���������� � ��
set say_moveDTfile=��������� .dt ���� �� ������� ����
set say_copylg=�������� ���
set say_unmountremotedrive=����������� ������� ����
set say_folderYes= - ������� ��� ������
set say_folderNo= - ������� ������������,�������� �������

chcp 866 >NUL
IF exist %localdrive%\%localfoldertemp% ( echo %localdrive%\%localfoldertemp% %say_folderYes% ) ELSE ( mkdir %localdrive%\%localfoldertemp% && echo %localdrive%\%localfoldertemp% %say_folderNo%)
echo ////////////// START backup %date% %time:~0,2%:%time:~3,2% ////////////////// >> %log%

echo %say_killallremotedrive%

net use * /delete /yes

echo %say_connectdrive%

net use %remotedrive% %remotefolderSMB% /user:%userSMB% %passSMB%


SET /A P=1

:1

SET Base=BuhStrOrg

SET BasePath=/S %ip1C%\%base%

GOTO STARTBACKUP

:2

SET Base=UKTSZH

SET BasePath=/S %ip1C%\%base%

GOTO STARTBACKUP

:3

SET Base=zup

SET BasePath=/S %ip1C%\%base%

GOTO STARTBACKUP

:4

SET Base=zupsuk

SET BasePath=/S %ip1C%\%base%

GOTO STARTBACKUP

:5

SET Base=parking

SET BasePath=/S %ip1C%\%base%

GOTO STARTBACKUP

::��� �������� ����� �������� �� �������, ������ ��������.
:6

GOTO ENDBACKUP

:STARTBACKUP
chcp 866 >NUL
echo. >> %log%
echo ============ start %base% ============
echo ============ START %Base% %date% %time:~0,2%:%time:~3,2% ================ >> %log%
IF exist %localdrive%\%localfoldertemp%\%base% ( echo %localdrive%\%localfoldertemp%\%base% %say_folderYes%) ELSE ( mkdir %localdrive%\%localfoldertemp%\%base% && echo %localdrive%\%localfoldertemp%\%base% %say_folderNo%)


echo %say_killusersDB%

chcp 1251 >NUL
start /wait "" chcp 866 >NUL && "%v8exe%" ENTERPRISE %BasePath% /DisableStartupMessages /N %user1C% /P %pass1C%  /C ����������������������������

chcp 866 >NUL
echo %say_createDtfile%

chcp 1251 >NUL
start /wait "" chcp 866 >NUL && "%v8exe%" CONFIG %BasePath% /DisableStartupMessages /DumpIB "%localdrive%\%localfoldertemp%\%base%\1c82_%base%_%date%.dt" /N %user1C% /P %pass1C% /UC ������������� /OUT"%log%" -NoTruncate

chcp 866 >NUL
echo %say_unlockDB%

chcp 1251 >NUL
start /wait "" chcp 866 >NUL && "%v8exe%" ENTERPRISE %BasePath% /DisableStartupMessages /N %user1C% /P %pass1C% /C ���������������������������� /UC �������������

chcp 866 >NUL
echo ============ END %Base% %date% %time:~0,2%:%time:~3,2% ================== >> %log%
echo. >> %log%


echo %say_moveDTfile%

IF exist %remotedrive%\%base% ( echo %remotedrive%\%base% %say_folderYes%) ELSE ( mkdir %remotedrive%\%base% && echo %remotedrive%\%base% %say_folderNo%)
move %localdrive%\%localfoldertemp%\%base%\*.dt %remotedrive%\%base%\

SET /A P=P+1

GOTO %P%

:ENDBACKUP
echo \\\\\\\\\\\\\\ END backup %date% %time:~0,2%:%time:~3,2% \\\\\\\\\\\\\\\\\\\ >> %log%


echo %say_copylg%


copy %log% %remotedrive% /y


echo %say_unmountremotedrive%

net use %remotedrive% /d /Y