@echo off

set GREEN=[92m  
set PURPLE=[95m 
set CLEAR=[0m  

echo %GREEN%Starting Install ...%CLEAR%

:install_all
    echo %GREEN% Starting Install software...%CLEAR%
    call:install-software

    echo %GREEN% Starting Install basic-tools...%CLEAR%
    call:install-basic-tools

    echo %GREEN% Starting Install others...%CLEAR%
    call:install-others
goto:eof

:install-software
    @REM pyhton 3.x
    echo %PURPLE%Install python-3.x%CLEAR%
    choco install python --version=3.11.0 -y

    @REM git
    echo %PURPLE%Install git%CLEAR%
    choco install git --version=2.39.0 -y
    git config --global user.email "andrew0301aw@gmail.com"
    git config --global user.name "andrew"

    @REM php 8.1.15
    echo %PURPLE%Install PHP 8.1.15%CLEAR%
    choco install php --version=8.1.15 -y

    @REM nodejs
    echo %PURPLE%Install Node.js%CLEAR%
    choco install nodejs --version=18.14.0 -y
goto:eof

:install-basic-tools
    @REM google chrome
    echo %PURPLE%Install Google Chrome%CLEAR%
    choco install googlechrome -y

    @REM line
    echo %PURPLE%Install Line%CLEAR%
    choco install line -y

    @REM postman
    echo %PURPLE%Install Postman%CLEAR%
    choco install postman -y

    @REM vscode
    echo %PURPLE%Install Vscode%CLEAR%
    choco install vscode -y

    @REM discord
    echo %PURPLE%Install Discord%CLEAR%
    choco install discord -y

    @REM vnc viewer
    echo %PURPLE%Install VNC viewer%CLEAR%
    choco install vnc-viewer -y
goto:eof

:install-others
    @REM spotify
    echo %PURPLE%Install %CLEAR%
    choco install spotify -y
goto:eof



call:install_all