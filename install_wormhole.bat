::
:: This script installs wormhole (https://github.com/warner/magic-wormhole) and
:: its prerequisites. Run this as an administrator.
::

:: Install chocolatey.
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Install Python 3.
choco install -y python

:: Install Microsoft Visual C++ Build Tools 2015.
choco install -y vcbuildtools

:: Refresh environment variables so that we can call Python (this is not a 
:: native shell command: it is a script installed as part of chocolatey).
call RefreshEnv

:: Install wormhole.
pip install magic-wormhole
