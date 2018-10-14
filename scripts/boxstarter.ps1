# Install Boxstarter:
# Set-ExecutionPolicy RemoteSigned
# . { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
#
# Run (in Boxstarter Shell):
# Install-BoxstarterPackage -PackageName <THIS_URL>

Disable-UAC
Disable-BingSearch
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowFileExtensions

choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install Microsoft-Windows-Subsystem-Linux -source windowsfeatures

choco install vscode
choco install googlechrome
choco install firefox
choco install docker-for-windows
choco install 7zip.install
choco install git.install
# choco install sourcetree # Chocolatey経由だとスタートメニューに表示されない。
choco install hyper
choco install keyhac
choco install adobereader
# choco install visualstudio2017community # Boxstarter経由だと失敗する (PowerShellだとOK)。
choco install vlc
choco install anaconda3
choco install nvm

nvm install 8.12.0
nvm use 8.12.0

Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile ~/Ubuntu.appx -UseBasicParsing
Add-AppxPackage -Path ~/Ubuntu.appx

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
