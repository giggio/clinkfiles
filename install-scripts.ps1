$clink = "${env:ProgramFiles(x86)}\clink\clink_x64.exe"
$scripts = $(. $clink installscripts --list)
function Add-Script([string] $scriptPath) {
    if ("$scripts" -notlike "*$scriptPath*") {
        Write-Output "Adding $scriptPath to clink scripts..."
        . $clink installscripts $scriptPath
    }
}
Add-Script (Join-Path $PSScriptRoot "clink-completions")
Add-Script (Join-Path $PSScriptRoot "clink-fzf")