## Windows installation

### Pre-requisites

Before Windows 10 version xxx
```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi
wsl --set-default-version 2
```

Afte Win
```powershell
ubuntu install --root

```


```powershell
ubuntu run /mnt/c/Users/lalesle/git/github.com/LaurentLesle/ssh_dev_machine/setup.sh


```