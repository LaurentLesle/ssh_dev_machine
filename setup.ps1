# wsl --install -d Ubuntu
ubuntu install

$wsl_profile_path =  wsl wslpath (Get-ChildItem Env:USERPROFILE).value.replace('\', '\\') | Out-String
ubuntu run /mnt/c/Users/lalesle/git/github.com/LaurentLesle/ssh_dev_machine/setup.sh -e wsl_profile_path=$wsl_profile_path

code --install-extension ms-vscode-remote.remote-ssh --force
