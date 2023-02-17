@echo off
REM ReShade Switcher
set "mod=X:\game-stuff\game-collection\Dragon's Dogma\Mods"
set "game=S:\Games\Dragon's Dogma - Dark Arisen"
set input=0
set flag=0
set fx=0

if not exist DDDA.exe (echo Game executable not found.  Put this script into the game directory && pause && exit /b 1)

:menu
echo[
echo FX Setup
echo ========
echo 1. install Dragon's Dogma All Natural
echo 2. install E3FX
echo 3. install With Fire
echo 4. remove reshade
echo 5. exit
echo[
call :check
echo[
set /P input=What is your choice: 
cls
if %input%==4 (call :remove && goto :menu)
if %input%==5 (exit /B 0)
goto :install

:check
if exist d3d9.dll (
	echo A reshade package is currently installed:
	set flag=1
) else (
	echo No reshade package installed.
	set flag=0
	set fx=0
	exit /B 0
)
if exist SweetFX\ (
	echo Looks like 'All Natural'
	set fx=1
	exit /B 0
)
if exist ReShade\ (
	echo Looks like 'E3FX'
	set fx=2
	exit /B 0
)
if exist MasterEffect\ (
	echo Looks like 'With Fire'
	set fx=3
	exit /B 0
)


:install
if %flag%==1 (
	echo Removing current ReShade.
	call :remove
	echo done.
)
echo installing new ReShade
if %input%==1 (
	7z x "%mod%\Dragons_Dogma_All_Natural-190-1-00.7z" >null 2>&1
)
if %input%==2 (
	7z x "%mod%\E3FX v3-6-3.zip" >null 2>&1
)
if %input%==3 (
	7z x "%mod%\With_Fire_ReShade_2.0.7z" >null 2>&1
	move "With Fire! ReShade 2.0\With Fire! -ReShade- ORIGINAL\*" >null 2>&1
	move "With Fire! ReShade 2.0\With Fire! -ReShade- ORIGINAL\MasterEffect" >null 2>&1
	rmdir /S /Q "With Fire! ReShade 2.0\" >null 2>&1
)
echo done
goto :menu

:remove
if %fx%==0 (
	echo There is no reshade installed.
)
if %fx%==1 (
	rmdir /S /Q SweetFX\
	del d3d9.* ReShade.fx Sweet.fx
)
if %fx%==2 (
	rmdir /S /Q ReShade\
	del d3d9.* ReShade.fx
)
if %fx%==3 (
	rmdir /S /Q MasterEffect\
	del "d3d9.*" "MasterEffect.h" "ReShade.fx" "Read Me.txt"
)
exit /b 0