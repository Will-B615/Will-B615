<# 

.SYNOPSIS 

    This PowerShell  script configures registry entries to require mutual authentication and integrity for SYSVOL and NETLOGON UNC paths. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000050 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000050).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\NetworkProvider\HardenedPaths" 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Set the Hardened UNC Paths values 

Set-ItemProperty -Path $registryPath -Name "\\*\SYSVOL" -Value "RequireMutualAuthentication=1,RequireIntegrity=1" -Type String 

Set-ItemProperty -Path $registryPath -Name "\\*\NETLOGON" -Value "RequireMutualAuthentication=1,RequireIntegrity=1" -Type String 
