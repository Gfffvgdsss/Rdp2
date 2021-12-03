Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
Expand-Archive ngrok.zip
ngrok\ngrok.exe authtoken 1zZOttzfTVEWEEFImCg3yoEak92_6oVvawb2zAhpNF2intcpy
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1
net user Administrator /active:yes
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "P@ssw0rd!" -Force)
ngrok\ngrok.exe tcp 3389
