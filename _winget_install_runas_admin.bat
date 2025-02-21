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
rem winget install "Brave Browser"
rem pause
rem winget install "--id 9pfhdd62mxs1"
rem pause
rem winget install "--id 9pfhdd62mxs1"
rem pause
rem goto :eof
rem *************************************************************************

echo.
echo *************************************************************************
echo Install useful software
echo *************************************************************************

rem Preventing Command Meld: In some cases, if a function ends with a command that doesn't 
rem end in a newline (like echo|set /p), or if you're dealing with output redirection, 
rem having an echo. can prevent the next command from being concatenated to the previous output. 
rem This is less common in straightforward scripts but can be relevant in more complex scenarios.

echo.
winget install "Brave Browser"
echo.
winget install "Mozilla.Firefox"
echo.
winget install "Google.Chrome"
echo.
winget install "Google.GoogleDrive"
echo.
winget install "Google.ChromeRemoteDesktopHost"
echo.
winget install "DominikReichl.KeePass"
echo.
winget install "Adobe.Acrobat.Reader.64-bit"
echo.
winget install "Ookla.Speedtest.Desktop"
echo.
winget install "7zip"
echo.
winget install "lenovo vantage"
echo.

@echo off
echo.
echo *************************************************************************
set yes_or_no='y'
set /p yes_or_no="Install APPLE software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    rem Apple TV
    winget install "--id 9NM4T8B9JQZ1"

    rem Apple Music
    rem winget install "--id 9pfhdd62mxs1"

    rem iCloud
    rem winget install "--id 9PKTQ5699M62"
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
    rem winget install "Spotify"
    echo.
    winget install "NCHSoftware.VideoPad"
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
    echo.
    winget install "Proton.ProtonVPN"
    echo.
    winget install "Proton.ProtonDrive"
    echo.
    winget install "Proton.ProtonMail"
    echo.
    winget install "Proton.ProtonPass"
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
    echo.
    winget install "ESET.Security"
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
    echo.
    winget install "GitHub.GitHubDesktop"
    echo.
    winget install "Microsoft.VisualStudioCode"
    echo.
    rem winget install "Slack"
    winget install Slack --id 9WZDNCRDK3WP
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
    echo.
    winget install "ElectronicArts.EADesktop"
    echo.
    winget install "Blizzard.BattleNet"
    echo.
    winget install "Valve.Steam"
    echo.
    winget install "Nvidia.GeForceExperience"
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
    rem BUGGED winget install "Citrix.Workspace"
    echo.
    winget install "Jabra.Direct"
    echo.
    winget install "Microsoft.Teams"
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
    echo.
    winget install "Apache.OpenOffice"
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
    echo.
    winget install "ElementLabs.LMStudio"
    rem ******************************   
)

@echo off
echo.
echo *************************************************************************
echo Remove useless software
echo *************************************************************************
echo.
winget uninstall "Microsoft Sticky Notes"
echo.
winget uninstall "Microsoft.OneDrive"
echo.
winget uninstall "Skype"
echo.
winget uninstall "Weather"
echo.
winget uninstall "Windows Media Player"
echo.
winget uninstall "Mail and Calendar"
echo.
winget uninstall "Maps"

rem Paint 3D
echo.
winget uninstall --id 9NBLGGH5FV99

rem Movies & TV
echo.
winget uninstall --id 9WZDNCRFJ3P2

rem OneNote
echo.
winget uninstall --id XPFFZHVGQWWLHB

echo.
winget uninstall "Microsoft.DevHome"
echo.
winget uninstall "Solitaire & Casual Games"
echo.
winget uninstall "Mixed Reality Portal"
echo.
winget uninstall "OneNote for Windows 10"
echo.
winget uninstall "Teams Machine-Wide Installer"
echo.
winget uninstall "Apple.Bonjour"
echo.
winget uninstall "Copilot"
echo.
winget uninstall "Cortana"

rem QuickAssit
echo.
winget uninstall --id 9P7BP5VNWKX5


@echo off
echo.
echo *************************************************************************
echo Stop useless services
echo *************************************************************************
echo.
echo Windows Search
sc config "WSearch" start=disabled
sc stop "WSearch"

@echo off
echo.
echo *************************************************************************
echo Remove useless startup apps
echo *************************************************************************
echo.
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

@echo on
powercfg /x -hibernate-timeout-ac 0
powercfg /x -disk-timeout-ac 0
powercfg /x -monitor-timeout-ac 0
powercfg /x -standby-timeout-ac 0
@echo off

echo *************************************************************************
echo End
echo *************************************************************************
echo.
pause

goto :eof


rem *************************************************************************
rem FUNCTIONS
rem *************************************************************************

rem ---------------------------------------------------------------------------
:_WinGet
    echo.
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
:_winget
    echo.

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
