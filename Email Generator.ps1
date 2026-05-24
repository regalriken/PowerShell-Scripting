# Function 1: Checks if the user's name is long enough to make an email
function Test-NameLength {
    param (
        [string]$employeeName
    ) 
    if ($employeeName.Length -lt 3) {
        return $false 
    }
    else {
        return $true
    }
}

# Function 2: Combines the name with a domain to create an email address
function New-EmailAddress {
    param (
        [string]$employeeName 
    )
    $companyDomainName = "company41.xyz"
    

    return "$employeeName.$companyDomainName"
}

# Main Execution Function
function Invoke-Main {
    $name = "Riken"
    $result = Test-NameLength -employeeName $name
    
    if ($result) {
        $employeeEmail = New-EmailAddress -employeeName $name
        Write-Host $employeeEmail -ForegroundColor Green
    }
    else {
        Write-Host "Name '$name' is too short to generate an email address." -ForegroundColor Red
    }
}


Invoke-Main