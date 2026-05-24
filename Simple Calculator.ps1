# Function 1: Adds two numbers together and returns the result
function Add-TwoNumbers {
    # Defines the input parameters for the two numbers
    param (
        [int]$Number1,
        [int]$Number2
    )
    # Adds the two input numbers together and saves the answer
    $Sum = $Number1 + $Number2
    
    # Sends the calculated sum back to the script
    return $Sum
}

# Function 2: Checks if a number is bigger than 10
function Test-IfLarge {
    # Defines the input parameter for the number we want to check
    param (
        [int]$Total
    )
    # Compares the number to see if it is greater than 10
    if ($Total -gt 10) {
        # Outputs a message if the number is larger than 10
        Write-Host "That is a big number!" -ForegroundColor Green
    }
    else {
        # Outputs a message if the number is 10 or smaller
        Write-Host "That is a small number." -ForegroundColor Yellow
    }
}

# --- Main Script Execution ---

# Step 1: Call Function 1 to add 7 and 5 together, and save the result
$MyCalculatedTotal = Add-TwoNumbers -Number1 7 -Number2 5

# Step 2: Show the user what the total math answer is
Write-Host "The total sum is: $MyCalculatedTotal"

# Step 3: Pass that total into Function 2 to check if it's large
Test-IfLarge -Total $MyCalculatedTotal