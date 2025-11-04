<# 

.SYNOPSIS 

    This PowerShell script restricts Windows diagnostic data collection to Basic (or Security) by setting the AllowTelemetry registry value to 1 or 0. 

  

.NOTES 

    Author          : William Butler 

    LinkedIn        : linkedin.com/in/williambutlercybersentinel 

    GitHub          : https://github.com/Will-B615 

    Date Created    : 2025-11-02 

    Last Modified   : 2025-11-02 

    Version         : 1.0 

    CVEs            : N/A 

    Plugin IDs      : N/A 

    STIG-ID         : WN11-CC-000205 

  

.TESTED ON 

    Date(s) Tested  :  

    Tested By       :  

    Systems Tested  :  

    PowerShell Ver. :  

  

.USAGE 

    Put any usage instructions here. 

    Example syntax: 

    PS C:\> .\__remediation_template(STIG-ID-WN11-CC-000205).ps1  

#> 

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" 

$propertyName = "AllowTelemetry" 

$propertyValue = 1   # Use 0 for Security, 1 for Basic 

  

# Create the registry key if it doesn't exist 

if (-not (Test-Path $registryPath)) { 

    New-Item -Path $registryPath -Force 

} 

  

# Set Telemetry level to Basic (or Security) 

Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord 
