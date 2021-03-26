@ECHO OFF

ECHO Start? y/n 
echo (n = close)
SET /p wahl=
if '%wahl%' == 'n' goto Nein
if '%wahl%' == 'y' goto Ja
goto Ende
:Nein
title Passwort_Generator 
echo --------------------------------------------------------------------------------
echo *...................................Version 1.03...............................*
echo --------------------------------------------------------------------------------
pause
"TASKKILL /IM cmd.exe /FI " WINDOWTITLE eq PIN_Creator"
goto Ende
:Ja

title PIN_Creator 
:Auswahl
@echo off

echo 10 places or 4 places ? 
echo z = 10 / v = 4
SET /p wahl=
if '%wahl%' == 'z' goto zehn
if '%wahl%' == 'v' goto vier


Rem 10 Stellig
:zehn

 @echo off
echo ________________________________________________________________________

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 1.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 2.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 3.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 4.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 5.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A%
echo 6.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 7.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A%
echo 8.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 9.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 10.---------------------------------%wurf%----------------------------------


echo ..........................[Password strength xxxxxxxxxx ]................


goto wiederholen
Rem 4 stellig
:vier


@echo off
echo _______________________________________________________________________

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 1.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A%
echo 2.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 3.----------------------------------%wurf%----------------------------------

@echo off
set A=10
set /a wurf =%random% %%A% 
echo 4.----------------------------------%wurf%----------------------------------

echo ..........................[Password strength xxxx------ ]................

 



:wiederholen
@ECHO OFF

ECHO restart?  y/n (n = close) 
SET /p wahl=
if '%wahl%' == 'n' goto Nein
if '%wahl%' == 'y' goto Ja
goto Ende
:Nein
echo --------------------------------------------------------------------------------
echo *...................................Version 1.03...............................*
echo --------------------------------------------------------------------------------


goto Ende
:Ja
goto Auswahl
:Ende

TASKKILL /IM cmd.exe /FI " WINDOWTITLE eq PIN_Creator"