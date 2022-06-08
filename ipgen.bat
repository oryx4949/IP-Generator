@echo off
chcp 65001
color 70
mode con: cols=53 lines=10
:generate
:a
set /a a=%random%
if %a% GTR 126 (
goto a
)
if %a% GTR 0 (
goto b
)
goto a
:b
set /a b=%random%
if %b% GTR 255 (
goto b
)
:c
set /a c=%random%
if %c% GTR 255 (
goto c
)
:d
set /a d=%random%
if %d% GTR 255 (
goto d
)
set ip=%a%.%b%.%c%.%d%

ECHO %ip%> tempfile.txt
FOR %%? IN (tempfile.txt) DO ( SET /A strlength=%%~z? - 2 )
del tempfile.txt
cls
if %strlength% EQU 8 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip%        ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
if %strlength% EQU 9 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip%       ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
if %strlength% EQU 10 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip%      ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
if %strlength% EQU 11 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip%     ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
if %strlength% EQU 12 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip%    ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
if %strlength% EQU 13 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip%   ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
if %strlength% EQU 14 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip%  ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
if %strlength% EQU 15 (
echo  ┏━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ IP:%ip% ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━┛
)
echo  ┏━━━━━━━━━━━━━━━━━━━━━┓
echo  ┃ Generate another IP ┃
echo  ┗━━━━━━━━━━━━━━━━━━━━━┛
echo  *Class A IPs range from 1.0.0.0 to 126.255.255.255*
echo  (Every IP generated is a random number between
echo   those two.)
:clickloop
for /f "tokens=1,2 delims=:" %%A in ('batbox /m') do (
 set Y=%%B
 set X=%%A
)
if %Y% GTR 2 (
 if %Y% LSS 6 (
  if %X% LSS 23 (
goto generate
  )
 )
)
goto clickloop
