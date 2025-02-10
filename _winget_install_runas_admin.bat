@echo off
cls

rem *************************************************************************
rem TESTS
rem :_WinGet install "Brave Browser"
rem pause
rem :_WinGetWithID install "--id 9pfhdd62mxs1"
rem pause
rem :_WinGet install "--id 9pfhdd62mxs1"
rem pause
rem goto :eof
rem *************************************************************************

echo.
echo *************************************************************************
echo Install useful software
echo *************************************************************************

:_WinGet install "Brave Browser"
:_WinGet install "Mozilla.Firefox"

:_WinGet install "Google.Chrome"
:_WinGet install "Google.GoogleDrive"
:_WinGet install "Google.ChromeRemoteDesktopHost"

:_WinGet install "DominikReichl.KeePass"

:_WinGet install "Adobe.Acrobat.Reader.64-bit"
:_WinGet install "Ookla.Speedtest.Desktop"
:_WinGet install "7zip"
:_WinGet install "lenovo vantage"


@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install APPLE software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem Apple TV
    :_WinGetWithID install "--id 9NM4T8B9JQZ1"

    rem Apple Music
    :_WinGetWithID install "--id 9pfhdd62mxs1"

    rem iCloud
    :_WinGetWithID install "--id 9PKTQ5699M62"
    rem OLD VERSION winget install Apple.iCloud
    rem ******************************   
)
rem ) else if /i "%answer%"=="n" (
rem     echo You chose No.
rem )

@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install AUDIO-VIDEO software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    rem :_WinGet install "Spotify"
    :_WinGet install "NCHSoftware.VideoPad"
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install PROTON Suite (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    :_WinGet install "Proton.ProtonVPN"
    :_WinGet install "Proton.ProtonDrive"
    rem ******************************   

)


@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install ESET software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    :_WinGet install "ESET.Security"
    rem ******************************   

)


@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install DEV software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    :_WinGet install "GitHub.GitHubDesktop"
    :_WinGet install "Microsoft.VisualStudioCode"
    :_WinGet install "Slack"
    rem winget install Slack --id 9WZDNCRDK3WP
    rem ******************************   

)

@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install GAMING software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    :_WinGet install "ElectronicArts.EADesktop"
    :_WinGet install "Blizzard.BattleNet"
    :_WinGet install "Valve.Steam"
    :_WinGet install "Nvidia.GeForceExperience"
    rem ******************************   

)

@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install OFFICE software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    rem BUGGED :_WinGet install "Citrix.Workspace"
    :_WinGet install "Jabra.Direct"
    :_WinGet install "Microsoft.Teams"
    rem ******************************   

)

@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install OpenOffice software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    :_WinGet install "Apache.OpenOffice"
    rem ******************************   

)


@echo off
echo.
echo *************************************************************************
set /p answer="-> -> -> Install AI software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo Installing...

    rem ******************************   
    :_WinGet install "ElementLabs.LMStudio"
    rem ******************************   

)

@echo off
echo.
echo *************************************************************************
echo Remove useless software
echo *************************************************************************
:_WinGet uninstall "Microsoft Sticky Notes"
:_WinGet uninstall "Microsoft.OneDrive"
:_WinGet uninstall "Skype"
:_WinGet uninstall "Weather"
:_WinGet uninstall "Windows Media Player"
:_WinGet uninstall "Mail and Calendar"
:_WinGet uninstall "Maps"

rem Paint 3D
:_WinGetWithID uninstall "--id 9NBLGGH5FV99"

rem Movies & TV
:_WinGetWithID uninstall "--id 9WZDNCRFJ3P2"

rem OneNote
:_WinGetWithID uninstall "--id XPFFZHVGQWWLHB"

:_WinGet uninstall "Microsoft.DevHome"
:_WinGet uninstall "Solitaire & Casual Games"
:_WinGet uninstall "Mixed Reality Portal"
:_WinGet uninstall "OneNote for Windows 10"
:_WinGet uninstall "Teams Machine-Wide Installer"
:_WinGet uninstall "Apple.Bonjour"
:_WinGet uninstall "Copilot"
:_WinGet uninstall "Cortana"
:_WinGet uninstall "Quick Assist"


@echo off
echo.
echo *************************************************************************
echo Stop useless services
echo *************************************************************************

echo Windows Search
sc config "WSearch" start=disabled
sc stop "WSearch"

@echo off
echo.
echo *************************************************************************
echo Remove useless startup apps
echo *************************************************************************

echo Logitech Download Assistant
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Logishrd\DownloadAssistant
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Logishrd\LogiLDA.DLL
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\LogiLDA.dll"

@echo off
echo.
echo *************************************************************************
echo Hardening
echo *************************************************************************

echo.
echo Microsoft Edge - Disable "Offer to save passwords"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v PasswordManagerEnabled /t REG_DWORD /d 0 /f

echo.
echo Microsoft Edge - Set the Download Path
@echo off
set /p _download_path="-> -> -> Enter the Download path for this computer: "
echo You entered: %_download_path%
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v DownloadDirectory /t REG_SZ /d %_download_path% /f


echo *************************************************************************
echo Disable Sleep
echo *************************************************************************
@echo off
powercfg /x -hibernate-timeout-ac 0
powercfg /x -disk-timeout-ac 0
powercfg /x -monitor-timeout-ac 0
powercfg /x -standby-timeout-ac 0


goto :eof


rem *************************************************************************
rem FUNCTIONS
rem *************************************************************************

rem ---------------------------------------------------------------------------
:_WinGet
rem ---------------------------------------------------------------------------
    if /i %1=="" (
        echo eof no param
        goto :eof
    )

    if /i %2=="" (
        echo eof no param
        goto :eof
    )
    echo.
    echo winget %1 %2
  
    winget %1 %2
    goto :eof
   
rem ---------------------------------------------------------------------------

rem ---------------------------------------------------------------------------
:_WinGetWithID
rem ---------------------------------------------------------------------------
    if /i %1=="" (
        echo eof no param
        goto :eof
    )

    if /i %2=="" (
        echo eof no param
        goto :eof
    )

    setlocal enabledelayedexpansion
    set "param2=%~2"

    echo.
    echo winget %1 !%param2!
  
    winget %1 !%param2!
    goto :eof
   
rem ---------------------------------------------------------------------------

pause
