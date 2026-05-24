<#
Total Items Counter ([string[]] Arrays)
Problem: Imagine you are scanning items at a grocery store checkout. Write a script that counts how many total items are in a cart.

Function 1 (Count-Items): Takes an array of item names and returns the total count of items.

Function 2 (Show-Receipt): Takes that final total number and prints it to the screen.
#>

function Count-Items {
    param (
        [string[]] $ItemNames
    )

    $CountedItems=$ItemNames.count

    return $CountedItems
}

function Show-Receipt{
    param (
        [int]$CountedItems
    )

    Write-Host "You have purchased $CountedItems today. `nDon't have a good day, Have a great day." -ForegroundColor Cyan
}


function Main{
    [string]$UserInput=Read-Host -Prompt "What items you have purchased today?"
    [string[]]$ItemNames= $UserInput.Split(',')

    $NumberOfItems=Count-Items $ItemNames
    Show-Receipt $NumberOfItems

    exit
}


Main