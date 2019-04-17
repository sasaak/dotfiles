# Configure network settings
# netsh interface ip set address "local network" static my.ip.address.here my.network.mask.here my.default.gateway.here
# netsh interface ip set dns "local network" static my.dns.address.here primary
# WMIC computersystem where caption='current_pc_name' rename new_pc_name

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
choco install docker-desktop
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
# choco install gimp インストールに失敗する。powershellからchocoならいけた。

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

# Not automated:
# jetbrains tools, VS2010, VS2019 preview, dotnet core preview, Affinity tools, Sign tools 