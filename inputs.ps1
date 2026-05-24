function Start-Greeting {
    $userName = Read-Host -Prompt "Enter your name "
    Write-Host "Welcome to the program, $userName!" -ForegroundColor Cyan
}


function inputPassword {
    $userName = Read-Host -Prompt "Enter your desired username to proceed"
    $userPassword = Read-Host -Prompt "Please enter your password" -AsSecureString # password shown as *** on screen
 
    Write-Host "`n"

    Write-Host "Login captured for user: $username" -ForegroundColor Yellow
    Write-Host "Password stored safely as a secure object." -ForegroundColor Green
}