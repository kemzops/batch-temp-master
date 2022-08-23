@echo off
color 3
title BatchTempMaster - By AzizJaber#1616


:loading
    for /f "delims=" %%x in (config.txt) do (set "%%x")
    color %color%
    title BatchTempMaster %version% - By AzizJaber#1616
    setlocal enableextensions enabledelayedexpansion
    set "CR=" & for /f %%a in ('copy /Z "%~f0" nul') do if not defined CR set "CR=%%a"
    set "fill=[#####]"
    cls
    ECHO =========================================================================
	ECHO LOADING SETTINGS FROM (config.txt), PLEASE WAIT A FEW SECOUNDS...
    ECHO =========================================================================
	ECHO.
    ECHO REMOVE CONFIRM: %needconfirm% - SHOW CONFIRM BEFORE CONTINUE SCREEN
    ECHO.
    ECHO CMD COLOR: %color% - THE CMD TEXT COLOR
    ECHO.
    ECHO CURRENT VERSION: %version% - SCRIPT VERSION
    ECHO.
    ECHO =========================================================================
	ECHO NOTE: FOR BETTER RESULT, OPEN THIS SCRIPT WITH ADMIN PERMISSION !!
    ECHO.
	ECHO CHECK FOR SCRIPT UPDATES HERE: github.com/azizmjaber02/batch-temp-master
    ECHO =========================================================================
    ECHO.
	for /l %%a in (2 1 5) do (
        set "spaces=!fill:~%%a!"
        <nul set/p ".=Getting Everything Ready !fill:~0,%%a!!spaces:#= !!CR!"
        ping -n 2 "" > nul
	)
    ECHO(
    ECHO(Loading Done...


if %needconfirm%==false goto start


if %needconfirm%==true goto confirm


:confirm
cls
title BatchTempMaster %version% - Confirm Remove Before Continue
ECHO ================================================================================
ECHO FOLDERS/ACTIONS WITH (true) WILL BE FULLY REMOVED/RUN (NO RETURN !!)
ECHO.
ECHO FOLDERS/ACTIONS WITH (false) WILL BE IGNORED (NOTHING WILL BE REMOVED/RUN) 
ECHO ================================================================================
ECHO TEMP1: %temp1% - %USERPROFILE%\AppData\Local\Temp
ECHO.
ECHO TEMP2: %temp2% - %windir%\Temp
ECHO.
ECHO DISCORD CACHE: %discord_cache% - SPEED UP DISCORD BY REMOVING LOCAL CACHE FILES
ECHO.
ECHO LOG FILES: %logfiles% - REMOVE ALL FILES WITH *.LOG EXTENTION
ECHO.
ECHO PREFETCH: %prefetch% - %windir%\Prefetch
ECHO ================================================================================
ECHO NOTE: PLEASE MAKE SURE TO CLOSE EVERYTHING THAT YOU DONT USE/NEED RIGHT NOW!
ECHO ================================================================================
ECHO.
pause
cls
goto start


:start
cls
title BatchTempMaster %version% - Please Wait This May Take Long Time
ECHO ==========================================================================================
ECHO BatchTempMaster %version% - REMOVING TEMPORARY FOLDERS/FILES... THIS MAY TAKE LONG TIME
ECHO ==========================================================================================
ECHO MESSAGE: The process cannot access the file because it is being used by another process.
ECHO NOTE: IF THIS MESSAGE APPEARS THATS NORMAL... SOME FOLDERS/FILES CANT BE DELETED (IN-USE)
ECHO ==========================================================================================
ECHO.

@echo

if %temp1%==true (
	cd /D %temp%
	for /d %%D in (*) do rd /s /q "%%D"
	del /f /q *
    ECHO. 
    ECHO ========================================================================
    ECHO TEMP1: %USERPROFILE%/AppData/Local/Temp - DONE
    ECHO ========================================================================
    ECHO.
) Else (
    ECHO. 
    ECHO ========================================================================
    ECHO TEMP1: %USERPROFILE%/AppData/Local/Temp - SKIPPED
    ECHO ========================================================================
    ECHO.
)

if %temp2%==true (
	cd /D %windir%/temp
	for /d %%D in (*) do rd /s /q "%%D"
	del /f /q *
    ECHO. 
    ECHO ========================================================================
    ECHO TEMP2: %windir%/temp - DONE
    ECHO ========================================================================
    ECHO.
) Else (
    ECHO. 
    ECHO ========================================================================
    ECHO TEMP2: %windir%/temp - SKIPPED
    ECHO ========================================================================
    ECHO.
)

if %discord_cache%==true (
    cd "%APPDATA%/Discord/Cache"
    del /S *.*
    cd "%APPDATA%/Discord/Code Cache"
    del /S *.*
    cd "%APPDATA%/Discord/GPUCache"
    del /S *.*
    ECHO. 
    ECHO ========================================================================
    ECHO DISCORD CACHE: %APPDATA%/Discord/Cache - DONE
    ECHO ========================================================================
    ECHO. 
) Else (
    ECHO. 
    ECHO ========================================================================
    ECHO DISCORD CACHE: %APPDATA%/Discord/Cache - SKIPPED
    ECHO ========================================================================
    ECHO.
)

if %logfiles%==true (
    cd/
    del *.log /a /s /q /f
    ECHO. 
    ECHO ========================================================================
    ECHO REMOVE ALL FILES WITH *.LOG EXTENTION - DONE
    ECHO ========================================================================
    ECHO.
) Else (
    ECHO. 
    ECHO ========================================================================
    ECHO REMOVE ALL FILES WITH *.LOG EXTENTION - SKIPPED
    ECHO ========================================================================
    ECHO.
)

if %prefetch%==true (
	cd /D %windir%\Prefetch
	for /d %%D in (*) do rd /s /q "%%D"
	del /f /q *
    ECHO. 
    ECHO ========================================================================
    ECHO PREFETCH: %windir%/Prefetch - DONE
    ECHO ========================================================================
    ECHO.
) Else (
    ECHO. 
    ECHO ========================================================================
    ECHO PREFETCH: %windir%/Prefetch - SKIPPED
    ECHO ========================================================================
    ECHO.
)

pause
cls
goto finish

:finish
@echo off
cls
title BatchTempMaster %version% - Everything Done
ECHO ========================================================================
ECHO BatchTempMaster %version% - SCRIPT BY: AzizJaber#1616
ECHO ========================================================================
ECHO EVERYTHING DONE... HAVE NICE DAY %username% ;)
ECHO CHECK FOR SCRIPT UPDATES HERE: github.com/azizmjaber02/batch-temp-master
ECHO ========================================================================
ECHO NOTE: RESTART YOUR PC AFTER THIS IS OPTIMAL THING..
ECHO ========================================================================
ECHO.
pause
