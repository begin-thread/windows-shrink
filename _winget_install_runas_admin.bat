@echo off
cls

rem set MyVar='y'

rem set /p MyVar="(y/n)?"
rem IF '%MyVar%' == 'y' (
rem     echo MyVar is equal to y
rem ) ELSE (
rem     echo MyVar is not equal to n
rem )
rem goto :eof

rem *************************************************************************
rem TESTS
rem call :_WinGet install "Brave Browser"
rem pause
rem call :_WinGetWithID install "--id 9pfhdd62mxs1"
rem pause
rem call :_WinGet install "--id 9pfhdd62mxs1"
rem pause
rem goto :eof
rem *************************************************************************

echo.
echo *************************************************************************
echo Install useful software
echo *************************************************************************

call :_WinGet install "Brave Browser"
call :_WinGet install "Mozilla.Firefox"
call :_WinGet install "Google.Chrome"
call :_WinGet install "Google.GoogleDrive"
call :_WinGet install "Google.ChromeRemoteDesktopHost"
call :_WinGet install "DominikReichl.KeePass"
call :_WinGet install "Adobe.Acrobat.Reader.64-bit"
call :_WinGet install "Ookla.Speedtest.Desktop"
call :_WinGet install "7zip"
call :_WinGet install "lenovo vantage"

@echo off
echo.
echo *************************************************************************
set yes_or_no='y'
set /p yes_or_no="Install APPLE software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    rem Apple TV
    call :_WinGetWithID install "--id 9NM4T8B9JQZ1"

    rem Apple Music
    rem call :_WinGetWithID install "--id 9pfhdd62mxs1"

    rem iCloud
    rem call :_WinGetWithID install "--id 9PKTQ5699M62"
    rem OLD VERSION winget install Apple.iCloud
    rem ******************************

)

@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install AUDIO-VIDEO software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    rem call :_WinGet install "Spotify"
    call :_WinGet install "NCHSoftware.VideoPad"
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install PROTON Suite (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    call :_WinGet install "Proton.ProtonVPN"
    call :_WinGet install "Proton.ProtonDrive"
    rem ******************************   
)


@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install ESET software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    call :_WinGet install "ESET.Security"
    rem ******************************   
)


@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install DEV software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    call :_WinGet install "GitHub.GitHubDesktop"
    call :_WinGet install "Microsoft.VisualStudioCode"
    call :_WinGet install "Slack"
    rem winget install Slack --id 9WZDNCRDK3WP
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install GAMING software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    call :_WinGet install "ElectronicArts.EADesktop"
    call :_WinGet install "Blizzard.BattleNet"
    call :_WinGet install "Valve.Steam"
    call :_WinGet install "Nvidia.GeForceExperience"
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install OFFICE software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    rem BUGGED call :_WinGet install "Citrix.Workspace"
    call :_WinGet install "Jabra.Direct"
    call :_WinGet install "Microsoft.Teams"
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install OpenOffice software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    call :_WinGet install "Apache.OpenOffice"
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
set /p yes_or_no="Install AI software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    call :_WinGet install "ElementLabs.LMStudio"
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
echo Remove useless software
echo *************************************************************************
call :_WinGet uninstall "Microsoft Sticky Notes"
call :_WinGet uninstall "Microsoft.OneDrive"
call :_WinGet uninstall "Skype"
call :_WinGet uninstall "Weather"
call :_WinGet uninstall "Windows Media Player"
call :_WinGet uninstall "Mail and Calendar"
call :_WinGet uninstall "Maps"

rem Paint 3D
call :_WinGetWithID uninstall "--id 9NBLGGH5FV99"

rem Movies & TV
call :_WinGetWithID uninstall "--id 9WZDNCRFJ3P2"

rem OneNote
call :_WinGetWithID uninstall "--id XPFFZHVGQWWLHB"

call :_WinGet uninstall "Microsoft.DevHome"
call :_WinGet uninstall "Solitaire & Casual Games"
call :_WinGet uninstall "Mixed Reality Portal"
call :_WinGet uninstall "OneNote for Windows 10"
call :_WinGet uninstall "Teams Machine-Wide Installer"
call :_WinGet uninstall "Apple.Bonjour"
call :_WinGet uninstall "Copilot"
call :_WinGet uninstall "Cortana"

rem QuickAssit
call :_WinGetWithID uninstall "--id 9P7BP5VNWKX5"


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
set /p _download_path="Enter the Download path for this computer: "
echo You entered: %_download_path%
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v DownloadDirectory /t REG_SZ /d %_download_path% /f


@echo off
echo.
echo *************************************************************************
echo Disable Sleep
echo *************************************************************************
echo.
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

    if %1 == "" (
        echo eof no param
        goto :eof
    )

    if %2 == "" (
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
    if %1 == "" (
        echo eof no param
        goto :eof
    )

    if %2 == "" (
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
