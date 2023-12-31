#!/usr/bin/env bash
# Script Package Manager.
# Run a url as a script in Bash/PowerShell.
# See https://stackoverflow.com/questions/3362920/get-just-the-filename-from-a-path-in-a-bash-script.

# Bash
function bash-impl() {
    BASE_NAME="$(basename $2)"
    wget "$2"
    chmod +x "${BASE_NAME}"
    ./${BASE_NAME}
    rm ${BASE_NAME}
}
"bash-impl" "$@"
"exit"

# PowerShell
param (
    [Parameter(Mandatory=$true)][string]$url
)
$BASE_NAME=Split-Path $url -Leaf
Invoke-WebRequest $url -OutFile $BASE_NAME
./$BASE_NAME
rm $BASE_NAME
