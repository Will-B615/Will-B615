<# 

.SYNOPSIS 

    This PowerShell script disables Internet Connection Sharing by setting the NC_ShowSharedAccessUI registry value to 0. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000044 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000044).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Network Connections" 

$propertyName = "NC_ShowSharedAccessUI" 

$propertyValue = 0 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Disable Internet Connection Sharing 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord 
