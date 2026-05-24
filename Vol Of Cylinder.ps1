<#
Name: Riken Amitkumar Patel
ID: 5801
Date: 2026-05-24

This script will get area of Vol. of cylinder
Note: I have used math library in my script to standard all the calculations
#>

function Calculations {
    param (
        [decimal]$Radius,
        [decimal]$Height
    )
    $PI = [math]::PI
    $RadiusSquared = [math]::Pow($Radius, 2)
    $Volume = $PI * $RadiusSquared * $Height
    
    return $Volume
}

function Get-Volume {
    [decimal]$Radius = Read-Host -Prompt "Enter the radius of the cylinder (m)"
    [decimal]$Height = Read-Host -Prompt "Enter the height of the cylinder (m)"

    $Volume = Calculations $Radius $Height
    
    return $Volume
}

function Main {

    $Volume = Get-Volume
    $RoundedVolume = [math]::Round($Volume, 2)
    Write-Host "The volume of the cylinder is $RoundedVolume m³" -ForegroundColor Cyan

    Write-Host "The script has completed. You can now close the window" -ForegroundColor Green

    
}
Main