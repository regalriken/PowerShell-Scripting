<#
Name: Riken Amitkumar Patel
ID: 5801
Date: 2026-05-24

This script will get area of Vol. of cylinder
Note: I have used math library in my script to standard all the calculations
#>

# This function contains all the math related to volume of cylinder.
function Get-Volume {
# This has two parameters to start its math
[decimal]$Radius = Read-Host -Prompt "Enter the radius of the cylinder (m)"
[decimal]$Height = Read-Host -Prompt "Enter the height of the cylinder (m)"
# we are using math library as mentioned in NOTE
# PI as a CONST, hence CAPITAL LETTERS STYLE
$PI = [math]::PI
# Squaring radius for better readability of the script when used as a formula: PI * r² * h
$RadiusSquared = [math]::Pow($Radius, 2)
# applying the formula for VOL OF CYLINDER
$Volume = $PI * $RadiusSquared * $Height
# this will take volume value to the function caller and can be used there
return $Volume
}
# This function contains all the math related to surface area of cylinder.
function Get-SurfaceArea {
# This has two parameters to start its math
[decimal]$Radius = Read-Host -Prompt "Enter the radius of the cylinder (m)"
[decimal]$Height = Read-Host -Prompt "Enter the height of the cylinder (m)"
# we are using math library as mentioned in NOTE
# PI as a CONST, hence CAPITAL LETTERS STYLE
$PI = [math]::PI
# applying the formula for TOTAL SURFACE AREA OF CYLINDER: 2 * PI * r * (r + h)
$SurfaceArea = 2 * $PI * $Radius * ($Radius + $Height)
# this will take surface area value to the function caller and can be used there
return $SurfaceArea
}
# This is the entry point of the script, it handles user input and calls the right function.
function Main {
# showing the user what options are available
Write-Host "Please select an option:" -ForegroundColor White
Write-Host "1. Calculate Volume" -ForegroundColor Cyan
Write-Host "2. Calculate Surface Area" -ForegroundColor Yellow
# storing the user choice to decide which function to run
$Choice = Read-Host -Prompt "Enter your choice (1 or 2)"
if ($Choice -eq 1) {
# calling Get-Volume and rounding its result to 2 decimal places for display
$Volume = Get-Volume
$RoundedVolume = [math]::Round($Volume, 2)
Write-Host "The volume of the cylinder is $RoundedVolume m³" -ForegroundColor Cyan
} elseif ($Choice -eq 2) {
# calling Get-SurfaceArea and rounding its result to 2 decimal places for display
$SurfaceArea = Get-SurfaceArea
$RoundedSurfaceArea = [math]::Round($SurfaceArea, 2)
Write-Host "The surface area of the cylinder is $RoundedSurfaceArea m²" -ForegroundColor Yellow
} else {
# anything other than 1 or 2 is not valid
Write-Host "Invalid choice. Please run the script again." -ForegroundColor Red
}
# asking the user if they want to run another calculation
$TryAgain = Read-Host -Prompt "Would you like to try another function? (Y/N)"
if ($TryAgain.ToLower() -eq "y") {
Write-Host ""
# calling Main again recursively to restart the menu from the top
Main
return
}
# only prints once the user has chosen not to continue
Write-Host "The script has completed. You can now close the window" -ForegroundColor Green
}
Main