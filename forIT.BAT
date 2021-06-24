@echo off
pause
color b
cls

:restart
echo ==============================================
color ba
echo CMD otomatik programi
color b
echo ==============================================
echo Hangi islemi yapmak istiyorsun?

echo  1 Bilgisayar yeniden baslat
echo  2 Bilgisayar kapat
echo  3 Bilgisayar oturum kapat
echo  4 Bilgisayar uzak masaustu
echo  5 Bilgisayar onarimi
echo  6 Bilgisayar Diskpart ac
echo  7 Bilgisayar lisanslama (Win7 PRO)
echo  8 Bilgisayar lisanslama (Win8.1 PRO)
echo  9 Bilgisayar lisanslama (Win10 PRo)
echo  10 Bilgisayar lisanslama version 2 (win pro)
echo  11 Ping gonder
echo  12 MS Office 2016 lisanslama

echo ==============================================
set input = sec:
set/p input=sec:

if %input% == 1 goto bir
if %input% == 2 goto iki
if %input% == 3 goto uc
if %input% == 4 goto dort
if %input% == 5 goto bes
if %input% == 6 goto alti
if %input% == 7 goto yedi
if %input% == 8 goto sekiz
if %input% == 9 goto dokuz
if %input% == 10 goto on
if %input% == 11 goto onbir
if %input% == 12 goto oniki

color a
echo ==============================================
echo Lutfen menude yazan secenekler girin.
goto restart


:bir
color a
echo ==============================================
echo Bilgisayar yeniden baslatiliyor
shutdown -r
pause

:iki
color a
echo ==============================================
echo Bilgisayarkapatiliyor
shutdown -s 
pause

:uc
color a
echo ==============================================
echo Oturum kapatiliyor
shutdown -l
pause

:dort
color a
echo ==============================================
echo Uzak masaustu baslatiliyor
mstsc
pause

:bes
color a
echo ==============================================
echo SFC paket onarimi baslatiliyor
sfc/scannow
pause

:alti
color a
echo ==============================================
echo Baslatiliyor Diskpart...
diskpart
pause

:yedi
color a
echo ==============================================
echo Windows lisanslaniyor...
slmgr -rearm
slmgr -ato 
cscript slmgr.vbs /ipk YKHFT-KW986-GK4PY-FDWYH-7TP9F
cscript slmgr.vbs /skms kms.lotro.cc
script slmgr.vbs /ato
echo Lisanslama tamamlandý.
pause

:sekiz
color a
echo ==============================================
echo Windows lisanslaniyor...
slmgr -rearm
slmgr -ato
cscript slmgr.vbs /ipk XHQ8N-C3MCJ-RQXB6-WCHYG-C9WKB
cscript slmgr.vbs /skms kms.lotro.cc
script slmgr.vbs /ato
echo Lisanslama tamamlandý.
pause

:dokuz
color a
echo ==============================================
echo Windows lisanslaniyor...
slmgr -rearm
slmgr -ato
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cscript slmgr.vbs /skms kms.lotro.cc
script slmgr.vbs /ato
echo Lisanslama tamamlandý.
pause
:on
color a
echo ==============================================
echo Windows lisanslanýyor...
cscript slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
echo Lisanslama tamamlandý.
pause

:onbir
color a
echo ==============================================
set ping = ping numara girin:
set/p ping=ping numara girin:
echo ==============================================
echo Ping atiliyor...
color c
ping 192.168.%ping% -t
pause

:oniki
color a
echo ==============================================
@echo off

title Activate Microsoft Office 2016 ALL versions for FREE!&cls&echo ============================================================================&echo #Project: Activating Microsoft software products for FREE without software&echo ============================================================================&echo.&echo #Supported products:&echo - Microsoft Office Standard 2016&echo - Microsoft Office Professional Plus 2016&echo.&echo.&(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")&(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")&(for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)&(for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)&echo.&echo ============================================================================&echo Activating your Office...&cscript //nologo ospp.vbs /setprt:1688 >nul&cscript //nologo ospp.vbs /unpkey:WFG99 >nul&cscript //nologo ospp.vbs /unpkey:DRTFM >nul&cscript //nologo ospp.vbs /unpkey:BTDRB >nul&cscript //nologo ospp.vbs /unpkey:CPQVG >nul&cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul&set i=1


:server


if %i%==1 set KMS_Sev=kms7.MSGuides.com


if %i%==2 set KMS_Sev=kms8.MSGuides.com


if %i%==3 set KMS_Sev=kms9.MSGuides.com


if %i%==4 goto notsupported


cscript //nologo ospp.vbs /sethst:%KMS_Sev% >nul&echo ============================================================================&echo.&echo.


cscript //nologo ospp.vbs /act | find /i "successful" && (echo.&echo ============================================================================&echo.&echo #My official blog: MSGuides.com&echo.&echo #How it works: bit.ly/kms-server&echo.&echo #Please feel free to contact me at msguides.com@gmail.com if you have any questions or concerns.&echo.&echo #Please consider supporting this project: donate.msguides.com&echo #Your support is helping me keep my servers running everyday!&echo.&echo ============================================================================&choice /n /c YN /m "Would you like to visit my blog [Y,N]?" & if errorlevel 2 exit) || (echo The connection to my KMS server failed! Trying to connect to another one... & echo Please wait... & echo. & echo. & set /a i+=1 & goto server)


explorer "http://MSGuides.com"&goto halt


:notsupported


echo.&echo ============================================================================&echo Sorry! Your version is not supported.&echo Please try installing the latest version here: bit.ly/downloadmsp


:halt


pause >nul
echo MS Office 2016 lisanslandi...
pause
