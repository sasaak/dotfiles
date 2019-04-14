# Install Boxstarter:
# Set-ExecutionPolicy RemoteSigned
# . { iwr -useb https://boxstarter.org/bootstrapper.ps1 } | iex; get-boxstarter -Force
#
# Run (in Boxstarter Shell):
# Install-BoxstarterPackage -PackageName <THIS_URL>

Disable-UAC
Disable-BingSearch
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TaskbarOptions -Size Small -Dock Bottom -Combine Full -Lock
Enable-RemoteDesktop

# Code
choco install Microsoft-Hyper-V-All -source windowsFeatures
choco install Microsoft-Windows-Subsystem-Linux -source windowsfeatures
choco install docker-for-windows
choco install git.install
choco install svn
choco install anaconda3
choco install nvm
choco install vscode
choco install plantuml
choco install jetbrainstoolbox
choco install tortoisesvn
choco install tortoisegit
choco install hyper

# Tools
choco install googlejapaneseinput
choco install 7zip.install
choco install imgburn
choco install inkscape
choco install gimp

# Apps
choco install googlechrome
choco install firefox
choco install adobereader
choco install mpc-hc
choco install keepass.install

# Scripts
nvm install 8.12.0
nvm use 8.12.0
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1604 -OutFile ~/Ubuntu.appx -UseBasicParsing
Add-AppxPackage -Path ~/Ubuntu.appx

Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
