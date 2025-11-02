<# 

.SYNOPSIS 

    This PowerShell script configures the system to completely disable IPv6 source routing, protecting against packet spoofing according to STIG requirements. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000020 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000020).ps1  

#> 

$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" 

$propertyName = "DisableIpSourceRouting" 

$propertyValue = 2 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Set IPv6 source routing protection to highest 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord 
