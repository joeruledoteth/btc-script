
#Hash a string and offer to repeat
function get-hashvalue {

" " #blank line for readability
"It takes ~43 characters for 256 bits. Double that for security."
" " #blank line for readability 


$string = read-host -prompt "Enter a string (CASE and PUNCTUATION matter!)"
$numcar = $string.length

" " #blank line for readability

"You entered $numcar characters."

" " #blank line for readability

new-object System.Security.Cryptography.SHA256Managed | ForEach-Object {$_.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($string))} | ForEach-Object {$_.ToString("x2")} | Write-Host -NoNewline

" " #blank line for readability
" " #blank line for readability

$Readhost = Read-Host "Do you want to hash another string? ( y / n ) " 

Switch ($ReadHost) 
{ 
    Y { get-hashvalue } 
    N { break } 
    Default { "You didn't enter the a correct response" }
} 

}


#start the script
$Readhost = Read-Host "Do you want to hash a string? ( y / n ) " 
Switch ($ReadHost) 
{ 
    Y { get-hashvalue } 
    N { break } 
    Default { "You didn't enter the a correct response" }
} 