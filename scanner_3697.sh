#!/bin/bash

clear
echo -e "\e[1;32m"
echo "███████╗ ██████╗ █████╗ ███╗  ██╗███╗   ███╗███████╗██████╗"
echo "██╔════╝██╔════╝██╔══██╗████╗ ██║████╗ ████║██╔════╝██╔══██╗"
echo "█████╗  ██║     ███████║██╔██╗██║██╔████╔██║█████╗  ██████╔╝"
echo "██╔══╝  ██║     ██╔══██║██║╚████║██║╚██╔╝██║██╔══╝  ██╔══██╗"
echo "██║     ╚██████╗██║  ██║██║ ╚███║██║ ╚═╝ ██║███████╗██║  ██║"
echo "╚═╝      ╚═════╝╚═╝  ╚═╝╚═╝  ╚══╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝"
echo -e "\e[1;33m\nScanner_3697 - Created by: Termux Ex [ Umar Ruman ]\e[0m"
echo -e "\n\e[1;36mIt is only for educational purpose. We are not supporting any illegal activity.\e[0m\n"
echo -e "\e[1;35mYouTube: https://www.youtube.com/@TermuxEX3697"
echo -e "Instagram: https://www.instagram.com/termux_ex_3697?igsh=dG9jNDJidGoxNWd2\e[0m"
echo
echo -e "\e[1;34mThis tool will scan the following:\e[0m"
echo -e "\e[1;32m - Open ports & running services"
echo " - Website vulnerabilities (XSS, CSRF, File Upload flaws)"
echo " - HTTP headers and methods"
echo " - SSL/TLS issues including Heartbleed"
echo " - CMS detection (WordPress, PHP, etc.)"
echo " - Hidden directories and interesting endpoints"
echo " - General known vulnerabilities using Nmap scripts\e[0m"
echo

read -p $'\e[1;34mEnter target IP or domain: \e[0m' target
echo -e "\n\e[1;33mScanning $target... Please wait...\e[0m\n"

nmap -A -T4 $target >> output.txt
nmap -p 80,443 --script "http-enum,http-methods,http-security-headers,http-server-header,http-stored-xss,http-dombased-xss,http-csrf,http-fileupload-exploiter,http-php-version,http-wordpress-enum,ssl-enum-ciphers,ssl-cert,ssl-heartbleed,ssl-ccs-injection,ssl-dh-params,vuln" $target >> output.txt

echo -e "\n\e[1;32mScan completed! Results saved to output.txt\e[0m"
echo -e "\n\e[1;35mThanks for using Scanner_3697\nSubscribe on YouTube & follow on Instagram!\e[0m"
