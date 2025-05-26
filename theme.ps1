param (
    [Parameter(Mandatory=$true)]
    [ValidateSet("light", "dark")]
    [string]$Mode
)

function Set-DarkTheme {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 0
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 0
    Write-Host -f Yellow "Dark theme enabled.`n"
}

function Set-LightTheme {
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "AppsUseLightTheme" -Value 1
    Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" -Name "SystemUsesLightTheme" -Value 1
    Write-Host -f Yellow "Light theme enabled.`n"
}

switch ($Mode) {
    "dark" {
        Set-DarkTheme
    }
    "light" {
        Set-LightTheme
    }
}