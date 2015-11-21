@echo off

title backup 1c v77 - all base

chcp 1251 > nul
setlocal
rem  *******************************************************************
rem  ������ ����������
rem  *******************************************************************
set SRVput=v:
set put1c=x:

rem  *******************************************************************
rem  ������ ���������� ��� 7zip
rem  *******************************************************************
set zip="7zip\7za.exe" a -t7z

rem  *******************************************************************
rem  ������ ���������� ��� �����������
rem  *******************************************************************
set errlog="logfile.log"

rem  *******************************************************************
rem  ������ ���������� ��� ��� ��������
rem  *******************************************************************
set zp_suk="��������\��_���"
set zp_dskslav="��������\���_����������"
set zp_antera="��������\��_������"
set zp_arteks="��������\��_������"
set zp_asko="��������\��_����"
set zp_voltera="��������\��_��������"
set zp_koltrein="��������\��_��������"
set zp_copytsj="��������\��_�����_���"
set zp_revers="��������\��_������"
set zp_rolteks="��������\��_�������"
set zp_ront="��������\��_����"
set zp_ronter="��������\��_������"
set zp_skslav="��������\"��_�� ����""
set zp_sts="��������\��_���"

rem  *******************************************************************
rem  ������ ���������� ��� ��� ������ ������
rem  *******************************************************************
set or_alyans="�����������\������"
set or_asko="�����������\����"
set or_koltrein="�����������\��������"
set or_dskslav="�����������\��_���_����������"
set or_ipovchin="�����������\��_��_����������"
set or_rolteks="�����������\��_�������"
set or_voltera="�����������\��-��������"
set or_revers="�����������\������"
set or_ronter="�����������\������"
set or_skslav="�����������\"�� ����������""
set or_ssk="�����������\���"
set or_tsj="�����������\�������"

rem  *******************************************************************
rem  ������ ���������� ��� ��� ���
rem  *******************************************************************
set usn_ssk="���\���"
set usn_sts="���\���"
set usn_suk="���\���"
set usn_asko="���\"��� ����""
set usn_skslav="���\"��� �� ����������""
set usn_ipdomnik="���\���_��_��������"
set usn_ipovchin="���\���_��_����������"
set usn_tsj="���\���_���"
set usn_choporel="���\���_���_����"

rem  *******************************************************************
rem  ��������� ��� ������� �����
rem  *******************************************************************
net use * /delete /yes

rem  *******************************************************************
rem  ���������� ������� ����
rem  *******************************************************************
net use %SRVput% \\10.255.254.2\backup\1c\1c77 /user:backup avt747556
net use %put1c% \\10.255.254.3\1c

rem  *******************************************************************
rem  ������ ����� ��������
rem  *******************************************************************
%zip% "%SRVput%\%zp_suk%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_���" -ssw > nul
if not exist %SRVput%\%zp_suk%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_suk% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_dskslav%\backup77-%date%.7z" -mx3 "%put1c%\��_����\���_����������" -ssw > nul
if not exist %SRVput%\%zp_dskslav%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_dskslav% ����� ������ �� ������� >> %SRVput%\%errlog%
echo. >> %errlog%

%zip%  "%SRVput%\%zp_antera%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_������" -ssw > nul
if not exist %SRVput%\%zp_antera%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_antera% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_arteks%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_������" -ssw > nul
if not exist %SRVput%\%zp_arteks%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_arteks% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_asko%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_����" -ssw > nul
if not exist %SRVput%\%zp_asko%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_asko% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_voltera%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_��������" -ssw > nul
if not exist %SRVput%\%zp_voltera%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_voltera% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_koltrein%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_��������" -ssw > nul
if not exist %SRVput%\%zp_koltrein%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_koltrein% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_copytsj%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_�����_���" -ssw > nul
if not exist %SRVput%\%zp_copytsj%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_copytsj% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_revers%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_������" -ssw > nul
if not exist %SRVput%\%zp_revers%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_revers% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_rolteks%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_�������" -ssw > nul
if not exist %SRVput%\%zp_rolteks%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_rolteks% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_ront%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_����" -ssw > nul
if not exist %SRVput%\%zp_ront%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_ront% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_ronter%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_������" -ssw > nul
if not exist %SRVput%\%zp_ronter%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_ronter% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_skslav%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_�� ����" -ssw > nul
if not exist %SRVput%\%zp_skslav%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_skslav% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%zp_sts%\backup77-%date%.7z" -mx3 "%put1c%\��_����\��_���" -ssw > nul
if not exist %SRVput%\%zp_sts%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %zp_sts% ����� ������ �� ������� >> %SRVput%\%errlog%

rem  *******************************************************************
rem  ������ ����� ������ ������
rem  *******************************************************************

%zip%  "%SRVput%\%or_alyans%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\������" -ssw > nul
if not exist %SRVput%\%or_alyans%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_alyans% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_asko%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\����" -ssw > nul
if not exist %SRVput%\%or_asko%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_asko% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_koltrein%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\��������" -ssw > nul
if not exist %SRVput%\%or_koltrein%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_koltrein% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_dskslav%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\��_���_����������" -ssw > nul
if not exist %SRVput%\%or_dskslav%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_dskslav% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_ipovchin%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\��_��_����������" -ssw > nul
if not exist %SRVput%\%or_ipovchin%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_ipovchin% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_rolteks%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\��_�������" -ssw > nul
if not exist %SRVput%\%or_rolteks%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_rolteks% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_voltera%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\��-��������" -ssw > nul
if not exist %SRVput%\%or_voltera%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_voltera% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_revers%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\������" -ssw > nul
if not exist %SRVput%\%or_revers%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %%or_revers% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_ronter%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\������" -ssw > nul
if not exist %SRVput%\%or_ronter%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_ronter% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_skslav%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\�� ����������" -ssw > nul
if not exist %SRVput%\%or_skslav%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_skslav% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_ssk%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\���" -ssw > nul
if not exist %SRVput%\%or_ssk%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_ssk% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%or_tsj%\backup77-%date%.7z" -mx3 "%put1c%\����� �����\�������" -ssw > nul
if not exist %SRVput%\%or_tsj%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %or_tsj% ����� ������ �� ������� >> %SRVput%\%errlog%

rem  *******************************************************************
rem  ������ ����� ���
rem  *******************************************************************

%zip%  "%SRVput%\%usn_ssk%\backup77-%date%.7z" -mx3 "%put1c%\���\���" -ssw > nul
if not exist %SRVput%\%usn_ssk%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_ssk% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_sts%\backup77-%date%.7z" -mx3 "%put1c%\���\���" -ssw > nul
if not exist %SRVput%\%usn_sts%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_sts% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_suk%\backup77-%date%.7z" -mx3 "%put1c%\���\���" -ssw > nul
if not exist %SRVput%\%usn_suk%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_suk% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_asko%\backup77-%date%.7z" -mx3 "%put1c%\���\��� ����" -ssw > nul
if not exist %SRVput%\%usn_asko%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_asko% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_skslav%\backup77-%date%.7z" -mx3 "%put1c%\���\��� �� ����������" -ssw > nul
if not exist %SRVput%\%usn_skslav%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_skslav% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_ipdomnik%\backup77-%date%.7z" -mx3 "%put1c%\���\���_��_��������" -ssw > nul
if not exist %SRVput%\%usn_ipdomnik%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_ipdomnik% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_ipovchin%\backup77-%date%.7z" -mx3 "%put1c%\���\���_��_����������" -ssw > nul
if not exist %SRVput%\%usn_ipovchin%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_ipovchin% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_tsj%\backup77-%date%.7z" -mx3 "%put1c%\���\���_���" -ssw > nul
if not exist %SRVput%\%usn_tsj%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_tsj% ����� ������ �� ������� >> %SRVput%\%errlog%


%zip%  "%SRVput%\%usn_choporel%\backup77-%date%.7z" -mx3 "%put1c%\���\���_���_����" -ssw > nul
if not exist %SRVput%\%usn_choporel%\backup77-%date%.7z echo ����: %date% �����: %time% ������ ��������: � ����� %usn_choporel% ����� ������ �� ������� >> %SRVput%\%errlog%

rem  *******************************************************************
rem  ��������� ������� �����
rem  *******************************************************************
net use %SRVput% /d /Y
net use %put1c% /d /Y
exit /b