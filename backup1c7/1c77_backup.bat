@echo off

title backup 1c v77 - all base

chcp 1251 > nul
setlocal
rem  *******************************************************************
rem  Вводим переменные
rem  *******************************************************************
set SRVput=v:
set put1c=x:

rem  *******************************************************************
rem  Вводим переменную для 7zip
rem  *******************************************************************
set zip="7zip\7za.exe" a -t7z

rem  *******************************************************************
rem  Вводим переменную для логирования
rem  *******************************************************************
set errlog="logfile.log"

rem  *******************************************************************
rem  Вводим переменные для баз Зарплаты
rem  *******************************************************************
set zp_suk="Зарплата\ЗП_СУК"
set zp_dskslav="Зарплата\ДСК_Славянский"
set zp_antera="Зарплата\ЗП_Антера"
set zp_arteks="Зарплата\ЗП_Артэкс"
set zp_asko="Зарплата\ЗП_Аско"
set zp_voltera="Зарплата\ЗП_Вольтера"
set zp_koltrein="Зарплата\ЗП_Колтрейн"
set zp_copytsj="Зарплата\ЗП_копия_тсж"
set zp_revers="Зарплата\ЗП_Реверс"
set zp_rolteks="Зарплата\ЗП_Ролтэкс"
set zp_ront="Зарплата\ЗП_Ронт"
set zp_ronter="Зарплата\ЗП_Ронтер"
set zp_skslav="Зарплата\"ЗП_СК СЛАВ""
set zp_sts="Зарплата\ЗП_СТС"

rem  *******************************************************************
rem  Вводим переменные для баз общего режима
rem  *******************************************************************
set or_alyans="Предприятие\Альянс"
set or_asko="Предприятие\Аско"
set or_koltrein="Предприятие\Колтрейн"
set or_dskslav="Предприятие\ОР_ДСК_Славянский"
set or_ipovchin="Предприятие\ОР_ИП_Овчинников"
set or_rolteks="Предприятие\ОР_Ролтэкс"
set or_voltera="Предприятие\ОР-Вольтера"
set or_revers="Предприятие\Реверс"
set or_ronter="Предприятие\Ронтер"
set or_skslav="Предприятие\"СК Славянский""
set or_ssk="Предприятие\ССК"
set or_tsj="Предприятие\ТСЖСлав"

rem  *******************************************************************
rem  Вводим переменные для баз УСН
rem  *******************************************************************
set usn_ssk="УСН\ССК"
set usn_sts="УСН\СТС"
set usn_suk="УСН\СУК"
set usn_asko="УСН\"УСН Аско""
set usn_skslav="УСН\"УСН СК Славянский""
set usn_ipdomnik="УСН\УСН_ИП_Домников"
set usn_ipovchin="УСН\УСН_ИП_Овчинников"
set usn_tsj="УСН\УСН_ТСЖ"
set usn_choporel="УСН\УСН_ЧОП_Орел"

rem  *******************************************************************
rem  Отключаем все сетевые диски
rem  *******************************************************************
net use * /delete /yes

rem  *******************************************************************
rem  Подключаем сетевой диск
rem  *******************************************************************
net use %SRVput% \\10.255.254.2\backup\1c\1c77 /user:backup avt747556
net use %put1c% \\10.255.254.3\1c

rem  *******************************************************************
rem  Начало копий Зарплаты
rem  *******************************************************************
%zip% "%SRVput%\%zp_suk%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_СУК" -ssw > nul
if not exist %SRVput%\%zp_suk%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_suk% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_dskslav%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ДСК_Славянский" -ssw > nul
if not exist %SRVput%\%zp_dskslav%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_dskslav% файлы архива не найдены >> %SRVput%\%errlog%
echo. >> %errlog%

%zip%  "%SRVput%\%zp_antera%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Антера" -ssw > nul
if not exist %SRVput%\%zp_antera%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_antera% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_arteks%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Артэкс" -ssw > nul
if not exist %SRVput%\%zp_arteks%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_arteks% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_asko%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Аско" -ssw > nul
if not exist %SRVput%\%zp_asko%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_asko% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_voltera%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Вольтера" -ssw > nul
if not exist %SRVput%\%zp_voltera%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_voltera% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_koltrein%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Колтрейн" -ssw > nul
if not exist %SRVput%\%zp_koltrein%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_koltrein% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_copytsj%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_копия_тсж" -ssw > nul
if not exist %SRVput%\%zp_copytsj%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_copytsj% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_revers%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Реверс" -ssw > nul
if not exist %SRVput%\%zp_revers%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_revers% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_rolteks%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Ролтэкс" -ssw > nul
if not exist %SRVput%\%zp_rolteks%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_rolteks% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_ront%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Ронт" -ssw > nul
if not exist %SRVput%\%zp_ront%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_ront% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_ronter%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_Ронтер" -ssw > nul
if not exist %SRVput%\%zp_ronter%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_ronter% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_skslav%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_СК СЛАВ" -ssw > nul
if not exist %SRVput%\%zp_skslav%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_skslav% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_sts%\backup77-%date%.7z" -mx3 "%put1c%\ЗП_базы\ЗП_СТС" -ssw > nul
if not exist %SRVput%\%zp_sts%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %zp_sts% файлы архива не найдены >> %SRVput%\%errlog%

rem  *******************************************************************
rem  Начало копий Общего режима
rem  *******************************************************************

%zip%  "%SRVput%\%or_alyans%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\Альянс" -ssw > nul
if not exist %SRVput%\%or_alyans%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_alyans% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_asko%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\Аско" -ssw > nul
if not exist %SRVput%\%or_asko%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_asko% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_koltrein%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\Колтрейн" -ssw > nul
if not exist %SRVput%\%or_koltrein%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_koltrein% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_dskslav%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\ОР_ДСК_Славянский" -ssw > nul
if not exist %SRVput%\%or_dskslav%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_dskslav% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_ipovchin%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\ОР_ИП_Овчинников" -ssw > nul
if not exist %SRVput%\%or_ipovchin%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_ipovchin% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_rolteks%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\ОР_Ролтэкс" -ssw > nul
if not exist %SRVput%\%or_rolteks%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_rolteks% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_voltera%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\ОР-Вольтера" -ssw > nul
if not exist %SRVput%\%or_voltera%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_voltera% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_revers%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\Реверс" -ssw > nul
if not exist %SRVput%\%or_revers%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %%or_revers% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_ronter%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\Ронтер" -ssw > nul
if not exist %SRVput%\%or_ronter%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_ronter% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_skslav%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\СК Славянский" -ssw > nul
if not exist %SRVput%\%or_skslav%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_skslav% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_ssk%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\ССК" -ssw > nul
if not exist %SRVput%\%or_ssk%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_ssk% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_tsj%\backup77-%date%.7z" -mx3 "%put1c%\Общий режим\ТСЖСлав" -ssw > nul
if not exist %SRVput%\%or_tsj%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %or_tsj% файлы архива не найдены >> %SRVput%\%errlog%

rem  *******************************************************************
rem  Начало копий УСН
rem  *******************************************************************

%zip%  "%SRVput%\%usn_ssk%\backup77-%date%.7z" -mx3 "%put1c%\УСН\ССК" -ssw > nul
if not exist %SRVput%\%usn_ssk%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_ssk% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_sts%\backup77-%date%.7z" -mx3 "%put1c%\УСН\СТС" -ssw > nul
if not exist %SRVput%\%usn_sts%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_sts% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_suk%\backup77-%date%.7z" -mx3 "%put1c%\УСН\СУК" -ssw > nul
if not exist %SRVput%\%usn_suk%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_suk% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_asko%\backup77-%date%.7z" -mx3 "%put1c%\УСН\УСН Аско" -ssw > nul
if not exist %SRVput%\%usn_asko%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_asko% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_skslav%\backup77-%date%.7z" -mx3 "%put1c%\УСН\УСН СК Славянский" -ssw > nul
if not exist %SRVput%\%usn_skslav%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_skslav% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_ipdomnik%\backup77-%date%.7z" -mx3 "%put1c%\УСН\УСН_ИП_Домников" -ssw > nul
if not exist %SRVput%\%usn_ipdomnik%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_ipdomnik% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_ipovchin%\backup77-%date%.7z" -mx3 "%put1c%\УСН\УСН_ИП_Овчинников" -ssw > nul
if not exist %SRVput%\%usn_ipovchin%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_ipovchin% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_tsj%\backup77-%date%.7z" -mx3 "%put1c%\УСН\УСН_ТСЖ" -ssw > nul
if not exist %SRVput%\%usn_tsj%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_tsj% файлы архива не найдены >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_choporel%\backup77-%date%.7z" -mx3 "%put1c%\УСН\УСН_ЧОП_Орел" -ssw > nul
if not exist %SRVput%\%usn_choporel%\backup77-%date%.7z echo Дата: %date% Время: %time% Сервер сообщает: в папке %usn_choporel% файлы архива не найдены >> %SRVput%\%errlog%

rem  *******************************************************************
rem  Отключаем сетевые диски
rem  *******************************************************************
net use %SRVput% /d /Y
net use %put1c% /d /Y
exit /b