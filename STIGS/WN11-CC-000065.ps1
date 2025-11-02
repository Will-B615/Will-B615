<# 

.SYNOPSIS 

    This PowerShell script disables the automatic connection to open hotspots and shared networks by setting the AutoConnectAllowedOEM registry value to 0. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000065 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000065).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" 

$propertyName = "AutoConnectAllowedOEM" 

$propertyValue = 0 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Disable Wi-Fi Sense 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord
