#!/bin/bash
# coded by:HACKERSPUNK

clear
echo "


 _____  ____  ____  HACKERSPUNK _      _  _____ _  _____  _____
/__ __\/  _ \/  _ \/ \         / \  /|/ \/    // \/__ __\/  __/
  / \  | / \|| / \|| |   _____ | |  ||| ||  __\| |  / \  |  \  
  | |  | \_/|| \_/|| |_/\\____\| |/\||| || |   | |  | |  |  /_ 
  \_/  \____/\____/\____/      \_/  \|\_/\_/   \_/  \_/  \____\                                                  
";
echo "Checking directories...";
if [ -d "/data/data/com.termux/files/usr/share/doc/tool-wifite" ] ;
then
echo "[*] A directory tool-wifite was found! Do you want to replace it? [Y/n]:" ; 
read ans
if [ $ans == "y" ] ; 
then
 rm -R "/data/data/com.termux/files/usr/share/doc/tool-wifite"
else
 exit
fi
fi

 echo "Installing ...";
 echo "";
 git clone https://github.com/Punker-Bhai/tool-wifite /data/data/com.termux/files/usr/share/doc/tool-wifite;
 echo "#!/bin/bash 
 python /data/data/com.termux/files/usr/share/doc/WI-TOOLKIT/wi-toolkit.py" '${1+"$@"}' > wifite;
 chmod +x wifite;
 sudo cp wifite /usr/bin/;
 rm wifite;


if [ -d "/data/data/com.termux/files/usr/share/doc/tool-wifite" ] ;
then
echo "";
echo "Tool was istalled successfully!";
echo "";
  echo "All is done!! You can execute tool by typing wifite!"; 
  echo "";
else
  echo "Installation failed!";
  exit
fi
