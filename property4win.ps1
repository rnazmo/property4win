# How to run this script:
#   powershell .\property4win
#
# Prerequisite:
#   Recent Windows :)
#
# MEMO:
#   About the shell When you run this script:
#     - 'powershell' (= 'PowerShell Desktop')
#     - 'pwsh' (= 'PowerShell Core').
#     Ref:
#       How to specify 'powershell' or 'pwsh' on you GitHub Actions workflow:
#         https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#example-using-powershell-desktop-to-run-a-script
#         https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#example-running-a-script-using-powershell-core
#       Difference between 'PowerShell Desktop' and 'PowerShell Core':
#         TODO: ???
#         https://en.wikipedia.org/wiki/PowerShell#Windows_PowerShell_5.1
#         https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_powershell_editions?view=powershell-7.1
#         https://docs.microsoft.com/en-us/powershell/scripting/gallery/concepts/module-psedition-support?view=powershell-7.1
#       How to check your current PowerShell edition is Desktop or Core:
#         You can check it by running `$PSVersionTable` on your powershell
#           Ref: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_powershell_editions?view=powershell-7.1#the-psedition-automatic-variable

$VERSION = 'v0.0.1'

function Main {
    $LINE1 = 'property4win {0} - A tiny PowerShell script to get OS version' -f $VERSION
    $LINE2 = 'info. https://github.com/rnazmo/property4win'
    Write-Output $LINE1
    Write-Output $LINE2
    Write-Output '============================================================'
    Get-OS-Version
    Get-PowerShell-Version
    Write-Output '============================================================'
}

# Ref:
#   Get OS info:
#     https://www.windows-commandline.com/find-windows-os-version-from-command/
#   Get CPU info:
#     https://www.windows-commandline.com/get-cpu-processor-information-command/
#   About 'findstr':
#     https://www.windows-commandline.com/find-windows-os-version-from-command/
#   String formatting:
#     https://hodgkins.io/the-ultimate-guide-to-powershell-string-formatting
#
# NOTE:
#   Use 'Get-WmiObject' not 'Get-WmiObject', because 'Get-WmiObject' only works
#   on 'PowerShell Desktop' edition and not on 'PowerShell Core' edtion. I want to
#   make this file work with both.
#     Ref: https://forums.powershell.org/t/powershell-7-is-missing-get-wmiobject/14011/4
#
Function Get-OS-Version {
    $CAPTION = 'Caption   : {0}' -f (Get-CimInstance Win32_OperatingSystem).Caption
    Write-Output $CAPTION
    $VERSION = 'Version   : {0}' -f (Get-CimInstance Win32_OperatingSystem).Version
    Write-Output $VERSION
    # $BUILDNUM = 'Build     : {0}' -f (Get-CimInstance Win32_OperatingSystem).BuildNumber
    # Write-Output $BUILDNUM
    $OSARCH = 'OS Arch   : {0}' -f (Get-CimInstance Win32_OperatingSystem).OSArchitecture
    Write-Output $OSARCH
    # $BUILDTYPE = 'BuildType : {0}' -f (Get-CimInstance Win32_OperatingSystem).BuildType
    # Write-Output $BUILDTYPE

    # Write-Output "---------------------------------------------"
    # $OS_VERSION = (Get-CimInstance Win32_OperatingSystem).Version
    # $OS_BUILD_NUM = (Get-CimInstance Win32_OperatingSystem).BuildNumber
    # Write-Output "$OS_VERSION"
    # Write-Output "$OS_BUILD_NUM"

    # Write-Output "---------------------------------------------"
    # Write-Output (Get-CimInstance Win32_OperatingSystem).CSName; # You device name (= 'hostname' on Linux)
    # Write-Output (Get-CimInstance Win32_OperatingSystem).SerialNumber # NOTE: THIS PRINTS YOUR SECRET INFO!!

    # Write-Output "---------------------------------------------"
    # systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
}

# Ref:
#   https://morgantechspace.com/2015/06/powershell-tips-how-to-check-powershell-version.html
#   https://riptutorial.com/powershell/example/26974/-psversiontable
Function Get-PowerShell-Version {
    # $MAJOR = ($PSVersionTable.PSVersion).Major
    # $MINOR = ($PSVersionTable.PSVersion).Minor
    # $BUILD = ($PSVersionTable.PSVersion).Build
    # $VERSIN_SHORT = 'PowerShell: {0}' -f "$MAJOR.$MINOR"
    # Write-Output $PWSH_VERSIN

    $VERISON = 'PSVersion : {0}' -f $PSVersionTable.PSVersion
    $EDITION = 'PSEdition : {0}' -f $PSVersionTable.PSEdition
    Write-Output $VERISON
    Write-Output $EDITION
}

Main
