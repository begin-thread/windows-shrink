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
rem winget install --id 9pfhdd62mxs1
rem pause
rem winget install --id 9pfhdd62mxs1
rem pause
rem goto :eof
rem *************************************************************************


echo *************************************************************************
echo Install useful software
echo *************************************************************************

rem Preventing Command Meld: In some cases, if a function ends with a command that doesn't 
rem end in a newline (like echo|set /p), or if you're dealing with output redirection, 
rem having an  can prevent the next command from being concatenated to the previous output. 
rem This is less common in straightforward scripts but can be relevant in more complex scenarios.


winget install "Brave Browser"
winget install "Mozilla.Firefox"

winget install "DominikReichl.KeePass"

winget install "Adobe.Acrobat.Reader.64-bit"

winget install "Ookla.Speedtest.Desktop"

winget install "7zip"


REM ###############################################################################################
@echo off
echo *************************************************************************
set yes_or_no='y'
set /p yes_or_no="Install APPLE software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    rem Apple TV
    winget install --id 9NM4T8B9JQZ1

    rem Apple Music
    rem winget install --id 9pfhdd62mxs1

    rem iCloud
    winget install --id 9PKTQ5699M62
    rem OLD VERSION winget install Apple.iCloud
    rem ******************************

)

REM ###############################################################################################
@echo off
echo *************************************************************************
set yes_or_no='y'
set /p yes_or_no="Install LENOVO software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
winget install "lenovo vantage"
)

REM ###############################################################################################
@echo off
echo *************************************************************************
set yes_or_no='y'
set /p yes_or_no="Install GOOGLE software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    winget install "Google.Chrome"
    winget install "Google.GoogleDrive"

)

REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install AUDIO-VIDEO software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    rem winget install "Spotify"
    
    winget install "NCHSoftware.VideoPad"
    winget install "VideoLAN.VLC"

    rem ******************************   
)

REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install PROTON Suite (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    
    winget install "Proton.ProtonVPN"
    
    winget install "Proton.ProtonDrive"
    
    winget install "Proton.ProtonMail"
    
    winget install "Proton.ProtonPass"
    rem ******************************   
)


REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install ESET software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    
    winget install "ESET.Security"
    rem ******************************   
)


REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install DEV software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    
    winget install "GitHub.GitHubDesktop"
    
    winget install "Microsoft.VisualStudioCode"
    rem winget install "Microsoft.VisualStudio.2022.Community"

    winget install "GitHub.cli"

    rem winget install "Slack"
    winget install Slack --id 9WZDNCRDK3WP

    winget install Discord.Discord
	
    winget install Notepad++
    rem ******************************   
)

REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install GAMING software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    
    winget install "ElectronicArts.EADesktop"
    
    winget install "Blizzard.BattleNet"
    
    winget install "Valve.Steam"
    
    winget install "Nvidia.GeForceExperience"
    rem ******************************   
)

REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install OFFICE software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    rem BUGGED winget install "Citrix.Workspace"
    
    winget install "Jabra.Direct"
    
    winget install "Microsoft.Teams"
    rem ******************************   
)

REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install OpenOffice software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    
    winget install "Apache.OpenOffice"
    rem ******************************   
)

REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install AI software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    
    winget install "ElementLabs.LMStudio"
    rem ******************************   
)

REM ###############################################################################################
@echo off
echo *************************************************************************
set /p yes_or_no="Install Remote Access software (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    
    rem winget install "TailScale.TailScale"
    
    winget install "Google.ChromeRemoteDesktopHost"
    
    winget install "Devolutions.RemoteDesktopManager"

    winget install "Putty.Putty"
    rem ******************************   
)

REM ###############################################################################################
echo *************************************************************************
set /p yes_or_no="Set vulnerability scanner requirements (y/n)?"
echo *************************************************************************

IF '%yes_or_no%' == 'y' (
    echo Installing...

    rem ******************************   
    sc config remoteregistry start=auto

    netsh advfirewall firewall add rule name= "Open Port 445" dir=in action=allow 

    reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system\LocalAccountTokenFilterPolicy " /f /v DisableIPSourceRouting  /t REG_DWORD /d 1

    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System " /f /v EnableLUA  /t REG_DWORD /d 0

    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

    rem ******************************   
)

REM ###############################################################################################
@echo off
echo *************************************************************************
echo Remove useless software
echo *************************************************************************

winget uninstall "Microsoft Sticky Notes"
winget uninstall "Microsoft.OneDrive"
winget uninstall "Microsoft.DevHome"
winget uninstall "OneNote for Windows 10"
winget uninstall "microsoft to do"

winget uninstall "Microsoft.Teams"
winget uninstall "Teams Machine-Wide Installer"
winget uninstall "Skype"


winget uninstall "xbox"
winget uninstall "gaming services"

winget uninstall "Start Experiences App"
winget uninstall "feedback hub"

winget uninstall "power automate"

winget uninstall "Mail and Calendar"
winget uninstall "Outlook"
winget uninstall "microsoft bing"

winget uninstall "Maps"
winget uninstall "Solitaire & Casual Games"
winget uninstall "Mixed Reality Portal"
winget uninstall "Weather"
winget uninstall "Windows Media Player"

winget uninstall "Apple.Bonjour"

winget uninstall "Copilot"
winget uninstall "Cortana"

rem Paint 3D
winget uninstall --id 9NBLGGH5FV99

rem Movies & TV
winget uninstall --id 9WZDNCRFJ3P2

rem OneNote
winget uninstall --id XPFFZHVGQWWLHB

rem QuickAssist
winget uninstall --id 9P7BP5VNWKX5

rem 2025-09-21
winget uninstall family


REM ###############################################################################################
@echo off
echo *************************************************************************
echo Stop useless services
echo *************************************************************************

echo Windows Search
sc config "WSearch" start=disabled
sc stop "WSearch"

REM ###############################################################################################
@echo off
echo *************************************************************************
echo Remove useless startup apps
echo *************************************************************************

echo Logitech Download Assistant
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Logishrd\DownloadAssistant
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Logishrd\LogiLDA.DLL
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\LogiLDA.dll"

REM ###############################################################################################
@echo off
echo *************************************************************************
echo Hardening
echo *************************************************************************

echo Microsoft Edge - Disable "Offer to save passwords"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Edge" /v PasswordManagerEnabled /t REG_DWORD /d 0 /f

echo Microsoft Edge - Set the Download Path
@echo off
set /p _download_path="Enter the Download path for this computer: "
echo You entered: %_download_path%
reg add "HKCU\SOFTWARE\Policies\Microsoft\Edge" /v DownloadDirectory /t REG_SZ /d %_download_path% /f


REM ###############################################################################################
@echo off
echo *************************************************************************
echo Disable Sleep
echo *************************************************************************

@echo on
powercfg /x -hibernate-timeout-ac 0
powercfg /x -disk-timeout-ac 0
powercfg /x -monitor-timeout-ac 300
powercfg /x -standby-timeout-ac 0
@echo off

echo *************************************************************************
echo End
echo *************************************************************************

pause

goto :eof

pause
