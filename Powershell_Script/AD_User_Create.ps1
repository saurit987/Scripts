# powershell script to create a AD user

# This is a complex script which will first take a CSV file of user details. 
# For each user, it will check if the user already exists in the AD. If the user does not exist, it will create the user in the AD. If the user already exists, it will update the user in the AD.

# The CSV file will have the following columns:
# - First Name
# - Last Name
# - Email
# - Phone
# - Department
# - Title
# - Manager
# - Office
# - Office Phone
# - Mobile Phone
# - Address
# - City
# - State
# - Zip
# - Country
# - Notes
# - Is Active
# - Is Locked Out
# - Is Expired
# - Is Disabled
# - Is Expired

Get-Content -Path "C:\Users\Administrator\Desktop\Users.csv" | ForEach-Object {
    $FirstName = $_.FirstName
    $LastName = $_.LastName
    $Email = $_.Email
    $Phone = $_.Phone
    $Department = $_.Department
    $Title = $_.Title
    $Manager = $_.Manager
    $Office = $_.Office
    $OfficePhone = $_.OfficePhone
    $MobilePhone = $_.MobilePhone
    $Address = $_.Address
    $City = $_.City
    $State = $_.State
    $Zip = $_.Zip
    $Country = $_.Country
    $Notes = $_.Notes
    $IsActive = $_.IsActive
    $IsLockedOut = $_.IsLockedOut
    $IsExpired = $_.IsExpired

   
}

$User = Get-ADUser -Filter "SamAccountName -eq $Email"

if ($User) {
    Write-Host "User already exists"
} else {
    New-ADUser -Name $FirstName $LastName `
        -DisplayName $FirstName $LastName `
        -EmailAddress $Email `
        -Department $Department `
        -Title $Title `
        -Manager $Manager `
        -PhysicalDeliveryOfficeName $Office `
        -TelephoneNumber $OfficePhone `
        -MobileTelephoneNumber $MobilePhone `
        -Address $Address `
        -City $City `
        -PostalCode $Zip `
        -Country $Country `
        -Info $Notes `
        -Enabled $IsActive `
        -AccountPassword (ConvertTo-SecureString -AsPlainText -Force "$Password") `
        -ChangePasswordAtLogon $True `
        -PasswordNeverExpires $True
}
