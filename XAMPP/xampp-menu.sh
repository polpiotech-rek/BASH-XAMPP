#!/bin/bash
clear
echo ---------------------------------------------------
echo "PANEL KONSOLOWY DO ZARZĄDZANIA WEB-SERVEREM [XAMPP]"
echo ---------------------------------------------------
echo
select y in Start Stop Reload Panel Quit
do
  case $y in
    "Start") echo "Wybrałeś włączenie servera [ APACHE, MySQL, FTP ]"
    echo
    echo
    echo $(./lampp-start.sh)
    echo ;;
    "Stop") echo "Wybrałeś wyłączenie servera [ APACHE, MySQL, FTP ]"
    echo
    echo
    echo $(./lampp-stop.sh)
    echo;;
    "Reload") echo "Wybrałeś ponowne uruchomienie servera [ APACHE, MySQL, FTP ]"
    echo
    echo
    echo $(./lampp-reload.sh)
    echo;;
    "Panel") echo "Wybrałeś uruchomienie panelu aplikacji XAMPP"
    echo
    echo
    echo $(./lampp-panel.sh)
    echo;;
    "Quit") exit ;;
    *) echo "Nic nie wybrałeś"
  esac
echo
#break
done
echo
echo
