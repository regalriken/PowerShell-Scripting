<#
The Traffic Light Simulator ([ValidateSet])
Problem: Write a script that checks a traffic light color. To prevent typos, the input must only allow "Red", "Yellow", or "Green".

Function 1 (Get-Action): Takes the validated color string and returns what the driver should do ("Stop", "Slow", or "Go").

Function 2 (Show-Signal): Takes that action and prints it on the screen in a nice message.
#>

# -------------------------------

function Get-Action {
    param (
        [ValidateSet("Red", "Yellow", "Green")]$LightColor
    )

    if ($LightColor -eq "Red") {
        return "Stop"
    }
    elseif ($LightColor -eq "Yellow") {
        return "Slow Down"
    }
    else {
        return "Go"
    }
}

function Show-Signal {
    param (
        [string]$DrivingAction
    )
    Write-Host "The light says you must: $DrivingAction!" -ForegroundColor Cyan
}


function Main{
$UserInput = Read-Host -Prompt "Enter the traffic light color (Red, Yellow, Green)"
$CurrentAction = Get-Action -LightColor $UserInput

Show-Signal -DrivingAction $CurrentAction

exit
}

Main