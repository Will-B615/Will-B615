<# 

.SYNOPSIS 

    This PowerShell script sets the maximum security event log file size to 1,024,000 KB by configuring the MaxSize registry value. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-AU-000505 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-AU-000505).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" 

$propertyName = "MaxSize" 

$propertyValue = 1024000 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Set Security Event Log maximum size 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord 
