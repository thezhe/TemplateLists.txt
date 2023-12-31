#!/usr/bin/env bash
# Script Package Manager.
# Run a url as a script in Bash/PowerShell.
# See https://stackoverflow.com/questions/3362920/get-just-the-filename-from-a-path-in-a-bash-script.

# Bash
function bash-impl() {
    echo "${SPM_URL}"
    BASE_NAME="${SPM_URL##*/}"
    wget "${SPM_URL}"
    chmod +x "${BASE_NAME}"
    ./${BASE_NAME}
    rm ${BASE_NAME}
}
"bash-impl"
"exit"

# PowerShell
$baseName = Split-Path $Env:SPM_URL -Leaf
Invoke-WebRequest $Env:SPM_URL -OutFile $baseName
Invoke-Expression "./$baseName"
rm $baseName
