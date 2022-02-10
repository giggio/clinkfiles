$scriptsDir = Join-Path $PSScriptRoot "clink-completions"
$clink = "${env:ProgramFiles(x86)}\clink\clink_x64.exe"
$scripts = $(. $clink installscripts --list)
if ("$scripts" -notlike "*$scriptsDir*") {
    Write-Output "Adding $scriptsDir to clink scripts..."
    . $clink installscripts $scriptsDir
}