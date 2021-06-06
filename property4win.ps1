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
Function Get-OS-Version {
    $CAPTION = 'Caption   : {0}' -f (Get-WmiObject Win32_OperatingSystem).Caption
    Write-Output $CAPTION
    $VERSION = 'Version   : {0}' -f (Get-WmiObject Win32_OperatingSystem).Version
    Write-Output $VERSION
    # $BUILDNUM = 'Build     : {0}' -f (Get-WmiObject Win32_OperatingSystem).BuildNumber
    # Write-Output $BUILDNUM
    $OSARCH = 'OS Arch   : {0}' -f (Get-WmiObject Win32_OperatingSystem).OSArchitecture
    Write-Output $OSARCH
    # $BUILDTYPE = 'BuildType : {0}' -f (Get-WmiObject Win32_OperatingSystem).BuildType
    # Write-Output $BUILDTYPE

    # Write-Output "---------------------------------------------"
    # $OS_VERSION = (Get-WmiObject Win32_OperatingSystem).Version
    # $OS_BUILD_NUM = (Get-WmiObject Win32_OperatingSystem).BuildNumber
    # Write-Output "$OS_VERSION"
    # Write-Output "$OS_BUILD_NUM"

    # Write-Output "---------------------------------------------"
    # Write-Output (Get-WmiObject Win32_OperatingSystem).CSName; # You device name (= 'hostname' on Linux)
    # Write-Output (Get-WmiObject Win32_OperatingSystem).SerialNumber # NOTE: THIS PRINTS YOUR SECRET INFO!!

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

    $VERSIN = 'PowerShell: {0}' -f $PSVersionTable.PSVersion
    Write-Output $VERSIN
}

Main
