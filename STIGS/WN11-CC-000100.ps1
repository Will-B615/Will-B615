<# 

.SYNOPSIS 

    This PowerShell script prevents downloading print driver packages over HTTP by setting the DisableWebPnPDownload registry value to 1. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000100 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000100).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers" 

$propertyName = "DisableWebPnPDownload" 

$propertyValue = 1 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Prevent downloading print drivers over HTTP 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord 

 
