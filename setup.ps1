# wsl --install -d Ubuntu
ubuntu install

$command = wsl -d Ubuntu wslpath "$pwd/setup.sh -e wsl_profile_path=$wsl_profile_path".replace('\', '\\') | Out-String
ubuntu run $command

code --install-extension ms-vscode-remote.remote-ssh --force
