#!/usr/bin/bash
#-*- encoding: utf-8 -*-

#------------COLOR ANT FONT AREA-------------@
lg1='\e[92m'
lg2='\e[102m'
lr1='\e[91m'
lr2='\e[101m'
lbl2='\e[104m'
def2='\e[49m'
black1='\e[30m'
lc1='\e[96m'
ly1='\e[93m'
ly2='\e[103m'
lm1='\e[95m'
w1='\e[0m'
defbl='\e[49m'
pur1 = '\e[0;35m'
#------------GRAPHICS AREA-------------@
#------------QUIT PROGRAM FUNCTION-------------@
quit()
{
  echo -en $lg1"\a\n\n["$lr1"+"$lg1"]"$w1" QUIT [y/N]?: "
  read quitz
  case $quitz in
  Y) echo -en $lg1"\a\n["$lr1"+"$lg1"]"$w1" GOODBYE..\n" ;;
  y) echo -en $lg1"\a\n["$lr1"+"$lg1"]"$w1" GOODBYE..\n" ;;
  N) clear
     opening ;;
  n) clear
     opening ;;
  esac
}
#------------Dependency check-------------@
command -v nmap > /dev/null 2>&1 || { echo >&2 'This program needs nmap. Please install it to use this tool.' ; exit 1; }
#------------OPENING SCREEN-------------@
opening()
{
 clear
 echo -en $lr1"\a\n"
 echo -en "  ▐ ▄   ▄▄▄ . ▄▄▄▄▄.  ▄▄ ·  ▄▄·   ▄▄▄·  ▐ ▄ \n"
 echo -en " •█▌▐█  ▀▄.▀· •██   ▐█ ▀. ▐█ ▌▪ ▐█ ▀█  •█▌▐█ \n"
 echo -en " ▐█▐▐▌  ▐▀▀▪▄  ▐█.▪▄▀▀▀█▄ ██ ▄▄ ▄█▀▀█  ▐█▐▐▌\n"
 echo -en " ██▐█▌  ▐█▄▄▌  ▐█▌·▐█▄▪▐█ ▐███▌ ▐█ ▪▐▌ ██▐█▌\n"
 echo -en " ▀▀ █▪   ▀▀▀   ▀▀▀  ▀▀▀▀ · ▀▀▀   ▀  ▀  ▀▀ █▪ \n"
  
 echo -en $black12$lr1"\nBy Yuma-Tsushima" $def2
 echo -en $def2"\n"
 echo -en $lg1"\n["$lr1"1"$lg1"]"$w1" SCRIPT ATTACK"
 echo -en $lg1"\n["$lr1"2"$lg1"]"$w1" ALIVE HOST SCAN"
 echo -en $lg1"\n\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
 read sell
 case $sell in
 1) scriptz ;;
 2) echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ENTER BROADCAST: "
    read broad
    nmap -Pn -sV $broad
    quit ;;
 esac
}
scriptz()
{
 echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ENTER YOUR TARGET: "
 read target
 echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
 echo " "
 echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" SCRIPTS MENU\n\n"
 echo -en $lg1"["$lr1"1"$lg1"]"$w1" PORT ATTACKS\n"
 echo -en $lg1"["$lr1"2"$lg1"]"$w1" ROUTER ATTACKS\n"
 echo -en $lg1"["$lr1"3"$lg1"]"$w1" SQL DATA ATTACK\n"
 echo -en $lg1"["$lr1"4"$lg1"]"$w1" IOS HACKING\n"
 echo -en $lg1"["$lr1"5"$lg1"]"$w1" BRUTE FORCE\n"
 echo -en $lg1"["$lr1"x"$lg1"]"$w1" QUIT...\n"
 echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE:"
 read scans
}
opening
#------------PORT ATTACK OPTION-------------@
ports()
{
  clear
  echo -en $lr1"\a\n"
  echo -en "      ▄▄▄·      ▄▄▄   ▄▄▄▄▄. ▄▄ · \n"
  echo -en "     ▐█ ▄█▪     ▀▄ █· •██  ▐█ ▀. \n"
  echo -en "      ██▀· ▄█▀▄ ▐▀▀▄  ▐█.▪▄▀▀▀█▄ \n"
  echo -en "      ▐█▪·▐█▌.▐▌▐█•█▌ ▐█▌·▐█▄▪▐█ \n"
  echo -en "      .▀   ▀█▄▀▪.▀  ▀ ▀▀▀  ▀▀▀▀   \n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
  echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" FTP HACKING\n"
  echo -en $lg1"["$lr1"2"$lg1"]"$w1" SSH HACKING\n"
  echo -en $lg1"["$lr1"3"$lg1"]"$w1" TELNET HACKING\n"
  echo -en $lg1"["$lr1"4"$lg1"]"$w1" SMTP HACKING\n"
  echo -en $lg1"["$lr1"5"$lg1"]"$w1" HTTP HACKING\n"
  echo -en $lg1"["$lr1"6"$lg1"]"$w1" HTTPS HACKING\n"
  echo -en $lg1"["$lr1"7"$lg1"]"$w1" SAMBA HACKING\n"
  echo -en $lg1"["$lr1"8"$lg1"]"$w1" RTSP HACKING\n"
  echo -en $lg1"["$lr1"9"$lg1"]"$w1" SNMP HACKING\n"
  echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
  read portz
}
#------------ROUTER ATTACK OPTION-------------@
routers()
{
  clear
  echo -en $lr1"\a\n"
  echo -en " ▄▄▄        ▄•  ▄▌ ▄▄▄▄▄ ▄▄▄ .▄▄▄  .▄▄ · \n" 
  echo -en " ▀▄ █·▪     █▪  ██▌•██  ▀▄.▀·▀▄ █·▐█ ▀. \n"
  echo -en " ▐▀▀▄  ▄█▀▄ █▌ ▐█▌  ▐█.▪▐▀▀▪▄ ▐▀▀▄ ▄▀▀▀█▄ \n"
  echo -en " ▐█•█▌▐█▌.▐▌▐█▄█▌   ▐█▌·▐█▄▄▌ ▐█•█▌▐█▄▪▐█ \n"
  echo -en "  ▀  ▀ ▀█▄▀▪ ▀▀▀    ▀▀▀  ▀▀▀ . ▀  ▀ ▀▀▀▀  \n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
  echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" CISCO\n"
  echo -en $lg1"["$lr1"2"$lg1"]"$w1" DLINK\n"
  echo -en $lg1"["$lr1"3"$lg1"]"$w1" TPLINK\n"
  echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
  read routerz
}
#------------SQL DATA ATTACK OPTION-------------@
sql()
{
  clear
  echo -en $lc1"\a\n"
  echo -en ".▄▄ ·   .▄▄▄   ▄▄▌ \n" 
  echo -en "▐█ ▀.   ▐▀•▀█  ██•  \n"
  echo -en " ▄▀▀▀█▄ █▌·.█▌ ██▪   \n"
  echo -en " ▐█▄▪▐█ ▐█▪▄█· ▐█▌▐▌  \n"
  echo -en "  ▀▀▀▀ · ▀▀█. . ▀▀▀  \n"
  echo -en $lg1"\n"
  echo -en " ·▄▄▄▄   ▄▄▄· ▄▄▄▄▄ ▄▄▄· \n"
  echo -en "  ██▪ ██ ▐█ ▀█ •██  ▐█ ▀█ \n"
  echo -en "  ▐█· ▐█▌▄█▀▀█  ▐█.▪▄█▀▀█ \n"
  echo -en "  ██. ██ ▐█ ▪▐▌ ▐█▌·▐█ ▪▐▌ \n"
  echo -en "  ▀▀▀▀▀•  ▀  ▀  ▀▀▀  ▀  ▀ \n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
  echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" AVAILABLE SCRIPTS\n"
  echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
  read sql_select
}
ios_hack()
{
  clear
  echo -en $lg1"\a\n"
  echo -en "▄▄▄▄▄       .▄▄ · \n"
  echo -en "•██  ▪      ▐█ ▀. \n"
  echo -en " ▐█.▪  ▄█▀▄ ▄▀▀▀█▄ \n"
  echo -en " ▐█▌· ▐█▌.▐▌▐█▄▪▐█ \n"
  echo -en "▀▀▀▀▀▀ ▀█▄▀▪ ▀▀▀▀  \n"
  echo -en $ly1"\n"
  echo -en "            ▄ .▄  ▄▄▄·  ▄▄· ▄ •▄ \n" 
  echo -en "           ██▪▐█ ▐█ ▀█ ▐█ ▌▪█▌▄▌▪ \n"
  echo -en "           ██▀▐█ ▄█▀▀█ ██ ▄▄▐▀▀▄·  \n"
  echo -en "           ██▌▐▀ ▐█ ▪▐▌▐███▌▐█.█▌   \n"
  echo -en "           ▀▀▀ ·  ▀  ▀ ·▀▀▀ ·▀  ▀    \n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
  echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" AVAILABLE SCRIPTS\n"
  echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
  read ios
}
brute_force()
{
  clear
  echo -en $lm1"\a\n"
  echo -en " ▄▄▄▄· ▄▄▄  ▄•  ▄▌ ▄▄▄▄ ▄▄▄▄ .\n"
  echo -en " ▐█ ▀█▪▀▄ █·█▪ ██▌• ██  ▀▄.▀· \n"
  echo -en " ▐█▀▀█▄▐▀▀▄ █▌ ▐█▌  ▐█.▪▐▀▀▪▄  \n"
  echo -en " ██▄▪▐█▐█•█▌▐█▄█▌   ▐█▌·▐█▄▄▌  \n"
  echo -en " ·▀▀▀▀ .▀  ▀ ▀▀▀    ▀▀▀  ▀▀▀   \n"
  echo -en $lg1"\n"
  echo -en "               ·▄▄▄      ▄▄▄   ▄▄· ▄▄▄ . \n"
  echo -en "               ▐▄▄·▪     ▀▄ █·▐█ ▌▪▀▄.▀· \n"
  echo -en "               ██▪  ▄█▀▄ ▐▀▀▄ ██ ▄▄▐▀▀▪▄  \n"
  echo -en "               ██▌.▐█▌.▐▌▐█•█▌▐███▌▐█▄▄▌  \n"
  echo -en "               ▀▀▀  ▀█▄▀▪.▀  ▀·▀▀▀  ▀▀▀   \n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" TARGET => "$lc1$target
  echo -en $lg1"\n\n["$lr1"1"$lg1"]"$w1" FTP BRUTE\n"
  echo -en $lg1"["$lr1"2"$lg1"]"$w1" SSH BRUTE\n"
  echo -en $lg1"["$lr1"3"$lg1"]"$w1" TELNET BRUTE\n"
  echo -en $lg1"["$lr1"4"$lg1"]"$w1" SMTP BRUTE\n"
  echo -en $lg1"["$lr1"5"$lg1"]"$w1" SNMP BRUTE\n"
  echo -en $lg1"["$lr1"6"$lg1"]"$w1" HTTP BRUTE\n"
  echo -en $lg1"["$lr1"7"$lg1"]"$w1" DNS BRUTE\n"
  echo -en $lg1"["$lr1"8"$lg1"]"$w1" MYSQL BRUTE\n"
  echo -en $lg1"["$lr1"9"$lg1"]"$w1" VNC BRUTE\n"
  echo -en $lg1"["$lr1"10"$lg1"]"$w1" SMB BRUTE\n"
  echo -en $lg1"["$lr1"x"$lg1"]"$w1" GO BACK >>\n"
  echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" CHOOSE: "
  read force
}
case $scans in
1) ports
   case $portz in
   #------------FTP ATTACK OPTION-------------@
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep ftp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 21 --script $scriptx $target
      quit ;;
   #------------SSH ATTACK OPTION-------------@
   2) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep ssh
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 22 --script $scriptx $target
      quit ;;
   #------------TELNET ATTACK OPTION-------------@
   3) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep telnet
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 23 --script $scriptx $target
      quit ;;
   #------------SMTP ATTACK OPTION-------------@
   4) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep smtp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 25 --script $scriptx $target
      quit ;;
   #------------HTTP ATTACK OPTION-------------@
   5) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep http
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 80 --script $scriptx $target
      quit ;;
   #------------HTTPS ATTACK OPTION-------------@
   6) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep https
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 443 --script $scriptx $target
      quit ;;
   #------------SMB ATTACK OPTION-------------@
   7) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep smb
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 445 --script $scriptx $target
      quit ;;
   #------------RTSP ATTACK OPTION-------------@
   8) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep rtsp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 554 --script $scriptx $target
      quit ;;
   #------------SNMP ATTACK OPTION-------------@
   9) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep snmp
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 161 --script $scriptx $target
      quit ;;
   x) cd;cd scan
      clear
      ./scan.sh ;;
   esac ;;
#--------------------------@
2) routers
   case $routerz in
   #------------CISCO ATTACK OPTION-------------@
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep cisco
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV --script $scriptx $target
      quit ;;
   #------------DLINK ATTACK OPTION-------------@
   2) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep dlink
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV --script $scriptx $target
      quit ;;
   #------------TPLINK ATTACK OPTION-------------@
   3) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep tplink
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV --script $scriptx $target
      quit ;;
   x) cd;cd scan
      clear
      ./scan.sh ;;
   esac ;;
3) sql
   case $sql_select in
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep sql
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 3306 --script $scriptx $target
      quit ;;
   x) cd;cd scan
      clear
      ./scan.sh ;;
   esac ;;
4) ios_hack
   case $ios in
   1) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep ios
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV --script $scriptx $target
      quit ;;
   x) cd;cd scan
      clear
      ./scan.sh ;;
   esac ;;
5) brute_force
   case $force in
   1) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 21 --script ftp-brute.nse $target
      quit ;;
   2) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 22 --script ssh-brute.nse $target
      quit ;;
   3) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 23 --script telnet-brute.nse $target
      quit ;;
   4) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 25 --script smtp-brute.nse $target
      quit ;;
   5) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 161 --script snmp-brute.nse $target
      quit ;;
   6) cd;cd ..;cd usr/share/nmap/scripts
      ls | grep http-brute
      ls | grep http-auth
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" YOUR SCRIPT: "
      read scriptx
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 80 --script $scriptx $target
      quit ;;
   7) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 53 --script dns-brute.nse $target
      quit ;;
   8) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 3306 --script mysql-brute.nse $target
      quit ;;
   9) cd;cd ..;cd usr/share/nmap/scripts
      echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
      nmap -Pn -sV -p 5900 --script vnc-brute.nse $target
      quit ;;
   10) cd;cd ..;cd usr/share/nmap/scripts
       echo -en $lg1"\n["$lr1"+"$lg1"]"$w1" ATTACK STARTED..\n"
       nmap -Pn -sV -p 445 --script smb-brute.nse $target
       quit ;;
   x) cd;cd scan
      clear
      ./scan.sh ;;
   esac ;;
x) quit ;;
esac