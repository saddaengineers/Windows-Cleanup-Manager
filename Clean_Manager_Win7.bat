@echo off

echo Jabong Clean-up is runing now, Please wait……

del %temp%\*.*/s/q
rd /s /q C:\$RECYCLE.BIN > nul
del C:\Windows\prefetch\*.*/s/q
del /s /f /q c:\windows\temp\*.*
RD /S /Q %temp%
rd /s /q c:\windows\temp
regedit /s EmptyBin.reg
cd /D C:\users
for /D %%a in (*.*) do DEL /F /S /Q "%%a\AppData\Local\Temp\*.*"
for /D %%a in (*.*) do FOR /D %%b IN ("%%a\AppData\Local\Temp\*.*") DO RMDIR /S /Q "%%b"
ECHO Clean IE Cache
for /D %%a in (*.*) do DEL /F /S /Q "%%a\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
for /D %%a in (*.*) do FOR /D %%b IN ("%%a\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*") DO RMDIR /S /Q "%%b"
ECHO Clean JAVA Cache
for /D %%a in (*.*) do DEL /F /S /Q "%%a\AppData\LocalLow\Sun\Java\Deployment\cache\*.*"
for /D %%a in (*.*) do FOR /D %%b IN ("%%a\AppData\LocalLow\Sun\Java\Deployment\cache\*.*") DO RMDIR /S /Q "%%b"
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
cleanmgr.exe /dc /sagerun: 1
defrag c: -h -x 
echo.




