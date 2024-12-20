@echo off
echo *************************************************************************
echo Install useful software
echo *************************************************************************

winget install "Brave Browser"
winget install "Mozilla Firefox"

winget install "Google.Chrome"
winget install "Google.GoogleDrive"
winget install "Google.ChromeRemoteDesktopHost"

winget install "DominikReichl.KeePass"

winget install "Adobe.Acrobat.Reader.64-bit"
winget install "Ookla.Speedtest.Desktop"
winget install "7zip"
winget install "lenovo vantage"


@echo off
echo *************************************************************************
set /p answer="-> -> -> Install APPLE software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem Apple TV
    winget install --id 9NM4T8B9JQZ1

    rem Apple Music
    winget install --id 9pfhdd62mxs1

    winget install iCloud --id 9PKTQ5699M62

    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)


@echo off
echo *************************************************************************
set /p answer="-> -> -> Install AUDIO-VIDEO software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem ******************************   
    winget install "Spotify"
    winget install "NCHSoftware.VideoPad"
    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)

@echo off
echo *************************************************************************
set /p answer="-> -> -> Install PROTON Suite (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem ******************************   
    winget install "Proton.ProtonVPN"
    winget install "Proton.ProtonDrive"
    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)


@echo off
echo *************************************************************************
set /p answer="-> -> -> Install ESET software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem ******************************   
    winget install "ESET.Security"
    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)


@echo off
echo *************************************************************************
set /p answer="-> -> -> Install DEV software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem ******************************   
    winget install "GitHub.GitHubDesktop"
    winget install "Microsoft.VisualStudioCode"
    winget install Slack --id 9WZDNCRDK3WP
    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)

@echo off
echo *************************************************************************
set /p answer="-> -> -> Install GAMING software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem ******************************   
    winget install "ElectronicArts.EADesktop"
    winget install "Blizzard.BattleNet"
    winget install "Valve.Steam"
    winget install "Nvidia.GeForceExperience"
    winget install -e --id "Nvidia.GeForceNow"
    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)

@echo off
echo *************************************************************************
set /p answer="-> -> -> Install OFFICE software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem ******************************   
    rem BUGGED winget install "Citrix.Workspace"
    winget install "Jabra.Direct"
    winget install "Microsoft.Teams"
    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)
echo on

@echo off
echo *************************************************************************
set /p answer="-> -> -> Install OpenOffice software (y/n)?"
echo *************************************************************************

if /i "%answer%"=="y" (
    echo You chose Yes.

    rem ******************************   
    winget install "Apache.OpenOffice"
    rem ******************************   

) else if /i "%answer%"=="n" (
    echo You chose No.
)

echo *************************************************************************
echo Remove useless software
echo *************************************************************************
winget uninstall "Microsoft Sticky Notes"
winget uninstall "Microsoft.OneDrive"
winget uninstall "Skype"
winget uninstall "Weather"
winget uninstall "Windows Media Player"
winget uninstall "Mail and Calendar"
winget uninstall "Maps"
winget uninstall "Paint 3D" --id 9NBLGGH5FV99
winget uninstall "Movies & TV" --id 9WZDNCRFJ3P2
winget uninstall "OneNote" --id XPFFZHVGQWWLHB
winget uninstall "Microsoft.DevHome"
winget uninstall "Solitaire & Casual Games"
winget uninstall "Mixed Reality Portal"
winget uninstall "OneNote for Windows 10"
winget uninstall "Teams Machine-Wide Installer"
winget uninstall "Apple.Bonjour"
winget uninstall "Copilot"
winget uninstall "Cortana"
winget uninstall "Quick Assist"


@echo off
echo *************************************************************************
echo Stop useless services
echo *************************************************************************
sc config "WSearch" start=disabled
sc stop "WSearch"

pause
