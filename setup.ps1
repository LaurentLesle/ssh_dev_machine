# wsl --install -d Ubuntu
ubuntu install

$wsl_profile_path =  wsl -d Ubuntu wslpath (Get-ChildItem Env:USERPROFILE).value.replace('\', '\\') | Out-String
$wsl_current_path = wsl -d Ubuntu wslpath (& write-output $pwd).path.replace('\', '\\') | Out-String
ubuntu run $wsl_current_path/setup.sh -e wsl_profile_path=$wsl_profile_path

code --install-extension ms-vscode-remote.remote-ssh --force
