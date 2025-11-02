<# 

.SYNOPSIS 

    This PowerShell script ensures command line data is included in all process creation audit events by setting the ProcessCreationIncludeCmdLine_Enabled registry value to 1. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000066 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000066).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\Audit" 

$propertyName = "ProcessCreationIncludeCmdLine_Enabled" 

$propertyValue = 1 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Enable command line inclusion in process creation events 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord 
