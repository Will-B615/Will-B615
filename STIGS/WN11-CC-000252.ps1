<# 

.SYNOPSIS 

    This PowerShell script disables Windows Game Recording and Broadcasting features by setting the AllowGameDVR registry value to 0. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000252 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000252).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\GameDVR" 

$propertyName = "AllowGameDVR" 

$propertyValue = 0 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Disable Windows Game Recording and Broadcasting 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord 
