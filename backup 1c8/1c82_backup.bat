rem  start "" /wait "C:\Program Files\1cv82\8.2.19.83\bin\1cv8.exe" ENTERPRISE /S 10.255.254.3\BuhStrOrg /N backup /P avt747556 /C"РазрешитьРаботуПользователей" /UC"КодРазрешения" /DisableStartupMessages /OUT"%log%" -NoTruncate
rem  start "" /wait "C:\Program Files\1cv82\8.2.19.83\bin\1cv8.exe" ENTERPRISE /S 10.255.254.3\BuhStrOrg /N backup /P avt747556 /C"РазрешитьРаботуПользователей" /UCПакетноеОбновлениеКонфигурацииИБ /DisableStartupMessages /OUT"%log%" -NoTruncate

chcp 1251
@echo off
setlocal

rem  *******************************************************************
rem  Объявляем переменные
rem  *******************************************************************
set SRVput=c:
set putbackup=n:
set v8exe=C:\Program Files\1cv82\8.2.19.83\bin\1cv8.exe
set serv=10.255.254.3
set basename=BuhStrOrg
set baseBuhStrOrg=/S %serv%\%basename%
set basename1=UKTSZH
set baseUKTSZH=/S %serv%\%basename1%
set basename2=zup
set baseZUP=/S %serv%\%basename2%
set basename3=zupsuk
set baseZUPsuk=/S %serv%\%basename3%
set log=%SRVput%\backup.log
set adminuser=/N backup /P avt747556



rem  *******************************************************************
rem  Делаю запись в журнал о начале резервного копирования BuhStrOrg
rem  *******************************************************************
echo ////////////// START backup %date% %time:~0,2%:%time:~3,2% ////////////////// >> %log%
echo. >> %log%

echo ============ add events in logfile - start %basename% ============
echo ============ START %basename% %date% %time:~0,2%:%time:~3,2% ================== >> %log%

rem  *******************************************************************
rem  Подготавливаем базу BuhStrOrg к резервному копированию
rem  *******************************************************************
echo start base BuhStrOrg

rem  *******************************************************************
rem  Проверяем - создана ли папка....
rem  *******************************************************************
echo created folder?
IF exist %SRVput%\%basename% ( echo %SRVput%\%basename% exists ) ELSE ( mkdir %SRVput%\%basename% && echo %SRVput%\%basename% created)

rem  *******************************************************************
rem  Завершаем работу пользователей и блокируем базу
rem  *******************************************************************
echo kicked users
start "" /wait "%v8exe%" ENTERPRISE %baseBuhStrOrg% %adminuser% /DisableStartupMessages /C ЗавершитьРаботуПользователей /OUT "%log%" -NoTruncate

rem  *******************************************************************
rem  Начало резервного копирования базы BuhStrOrg
rem  *******************************************************************
echo start backup base
start "" /wait "%v8exe%" CONFIG %baseBuhStrOrg% /WA- /AU- /DisableStartupMessages /DumpIB "%SRVput%\%basename%\1c82_%basename%_%date%.dt" %adminuser% /UC КодРазрешения /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Разрешаем работу пользователей и разблокируем базу
rem  *******************************************************************
echo Enabled login users 
start "" /wait "%v8exe%" ENTERPRISE %baseBuhStrOrg% %adminuser% /C"РазрешитьРаботуПользователей" /UC"КодРазрешения" /DisableStartupMessages /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Делаю запись в журнал об окончании резервного копирования базы BuhStrOrg
rem  *******************************************************************
echo add events in logfile
echo. >> %SRVput%\%error%
echo \\\\\\\\\\\\\\\\ END backup BuhStrOrg %date% %time:~0,2%:%time:~3,2% \\\\\\\\\\\\\\ >> %log%

rem  *******************************************************************
rem  Делаю запись в журнал о начале резервного копирования UKTSZH
rem  *******************************************************************
echo ============ add events in logfile - start %basename1% ============ 
echo ============ START %basename1% %date% %time:~0,2%:%time:~3,2% ================== >> %log%

rem  *******************************************************************
rem  Подготавливаем базу UKTSZH к резервному копированию
rem  *******************************************************************
echo start base UKTSZH

rem  *******************************************************************
rem  Проверяем - создана ли папка....
rem  *******************************************************************
echo created folder?
IF exist %SRVput%\%basename1% ( echo %SRVput%\%basename1% exists ) ELSE ( mkdir %SRVput%\%basename1% && echo %SRVput%\%basename1% created)

rem  *******************************************************************
rem  Завершаем работу пользователей и блокируем базу
rem  *******************************************************************
echo kicked users
start "" /wait "%v8exe%" ENTERPRISE %baseUKTSZH% %adminuser% /DisableStartupMessages /C"ЗавершитьРаботуПользователей" /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Начало резервного копирования базы UKTSZH
rem  *******************************************************************
echo start backup base
start "" /wait "%v8exe%" CONFIG %baseUKTSZH% /DisableStartupMessages /DumpIB "%SRVput%\%basename1%\1c82_%basename1%_%date%.dt" %adminuser% /UC"КодРазрешения" /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Разрешаем работу пользователей и разблокируем базу
rem  *******************************************************************
echo Enabled login users
start "" /wait "%v8exe%" ENTERPRISE %baseUKTSZH% %adminuser% /C"РазрешитьРаботуПользователей" /UC"КодРазрешения" /DisableStartupMessages /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Делаю запись в журнал об окончании резервного копирования базы UKTSZH
rem  *******************************************************************
echo add events in logfile
echo. >> %SRVput%\%error%
echo \\\\\\\\\\\\\\\\ END backup UKTSZH %date% %time:~0,2%:%time:~3,2% \\\\\\\\\\\\\\ >> %log%

rem  *******************************************************************
rem  Делаю запись в журнал о начале резервного копирования ZUP
rem  *******************************************************************
echo ============ add events in logfile - start %basename2% ============ 
echo ============ START %basename2% %date% %time:~0,2%:%time:~3,2% ================== >> %log%

rem  *******************************************************************
rem  Подготавливаем базу ZUP к резервному копированию
rem  *******************************************************************
echo start base ZUP

rem  *******************************************************************
rem  Проверяем - создана ли папка....
rem  *******************************************************************
echo created folder?
IF exist %SRVput%\%basename2% ( echo %SRVput%\%basename2% exists ) ELSE ( mkdir %SRVput%\%basename2% && echo %SRVput%\%basename2% created)

rem  *******************************************************************
rem  Завершаем работу пользователей и блокируем базу
rem  *******************************************************************
echo kicked users
start "" /wait "%v8exe%" ENTERPRISE %baseZUP% %adminuser% /DisableStartupMessages /C"ЗавершитьРаботуПользователей" /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Начало резервного копирования базы ZUP
rem  *******************************************************************
echo start backup base
start "" /wait "%v8exe%" CONFIG %baseZUP% /DisableStartupMessages /DumpIB "%SRVput%\%basename2%\1c82_%basename2%_%date%.dt" %adminuser% /UC"КодРазрешения" /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Разрешаем работу пользователей и разблокируем базу
rem  *******************************************************************
echo Enabled login users
start "" /wait "%v8exe%" ENTERPRISE %baseZUP% %adminuser% /C"РазрешитьРаботуПользователей" /UC"КодРазрешения" /DisableStartupMessages /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Делаю запись в журнал об окончании резервного копирования базы ZUP
rem  *******************************************************************
echo add events in logfile
echo. >> %SRVput%\%error%
echo \\\\\\\\\\\\\\\\ END backup ZUP %date% %time:~0,2%:%time:~3,2% \\\\\\\\\\\\\\ >> %log%


rem  *******************************************************************
rem  Делаю запись в журнал о начале резервного копирования ZUPsuk
rem  *******************************************************************
echo ============ add events in logfile - start %basename3% ============ 
echo ============ START %basename3% %date% %time:~0,2%:%time:~3,2% ================== >> %log%

rem  *******************************************************************
rem  Подготавливаем базу ZUP к резервному копированию
rem  *******************************************************************
echo start base ZUPsuk

rem  *******************************************************************
rem  Проверяем - создана ли папка....
rem  *******************************************************************
echo created folder?
IF exist %SRVput%\%basename3% ( echo %SRVput%\%basename3% exists ) ELSE ( mkdir %SRVput%\%basename3% && echo %SRVput%\%basename3% created)

rem  *******************************************************************
rem  Завершаем работу пользователей и блокируем базу
rem  *******************************************************************
echo kicked users
start "" /wait "%v8exe%" ENTERPRISE %baseZUPsuk% %adminuser% /DisableStartupMessages /C"ЗавершитьРаботуПользователей" /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Начало резервного копирования базы ZUP
rem  *******************************************************************
echo start backup base
start "" /wait "%v8exe%" CONFIG %baseZUPsuk% /DisableStartupMessages /DumpIB "%SRVput%\%basename3%\1c82_%basename3%_%date%.dt" %adminuser% /UC"КодРазрешения" /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Разрешаем работу пользователей и разблокируем базу
rem  *******************************************************************
echo Enabled login users
start "" /wait "%v8exe%" ENTERPRISE %baseZUPsuk% %adminuser% /C"РазрешитьРаботуПользователей" /UC"КодРазрешения" /DisableStartupMessages /OUT"%log%" -NoTruncate

rem  *******************************************************************
rem  Делаю запись в журнал об окончании резервного копирования базы ZUP
rem  *******************************************************************
echo add events in logfile
echo. >> %SRVput%\%error%
echo \\\\\\\\\\\\\\\\ END backup ZUPsuk %date% %time:~0,2%:%time:~3,2% \\\\\\\\\\\\\\ >> %log%


rem  *******************************************************************
rem  Отключаем все сетевые диски для избавления коллизий во время подключения
rem  *******************************************************************
net use * /delete /yes

rem  *******************************************************************
rem  Подключаем сетевой диск
rem  *******************************************************************
net use %putbackup% \\10.255.254.2\backup\1c\1c8.2 /user:1cbackup avt747556

rem  *******************************************************************
rem  Копирование фалов
rem  *******************************************************************
copy %SRVput%\backup.log %putbackup% /y
move %SRVput%\%basename%\*.dt %putbackup%\%basename%\
move %SRVput%\%basename1%\*.dt %putbackup%\%basename1%\
move %SRVput%\%basename2%\*.dt %putbackup%\%basename2%\
move %SRVput%\%basename3%\*.dt %putbackup%\%basename3%\

rem  *******************************************************************
rem  Отмонтируем сетевой диск
rem  *******************************************************************
echo deleted mount drive
net use %putbackup% /d /Y


exit /b
