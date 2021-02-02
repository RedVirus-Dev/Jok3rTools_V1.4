#!bin/bash

<<comment
###############################################
######>>>> BY:= Red_Vairus-EG
###############################################
comment

Colof='\033[0m'       # Text Reset

black='\033[1;30m'       # Black
red='\033[1;31m'         # Red
green='\033[0;32m'       # Green
yellow='\033[1;33m'      # Yellow
blue='\033[1;34m'        # Blue
purple='\033[1;35m'      # Purple
cyan='\033[1;36m'        # Cyan
white='\033[1;37m'       # White

banner(){
	sleep .1
	echo -e "${red}___________    ${yellow}__  ${green}________${white}V1.0  ${red}Using ${cyan}Nmap"
	sleep .1
	echo -e "${red}___  __ \_ ${yellow}|  / /  ${green}__  ___/___________ _______ "
	sleep .1
	echo -e "${red}__  /_/ /_ ${yellow}| / /   ${green}_____ \_  ___/  __  /_  __ \ "
	sleep .1
	echo -e "${red}_  _, _/__ ${yellow}|/ /    ${green}____/ // /__ / /_/ /_  / / /"
	sleep .1
	echo -e "${red}/_/ |_| ${yellow}_____/     ${green}/____/ \___/ \__,_/ /_/ /_/  $Colof"     
	echo ""                                                                       
}

main_page() {
if [ "$(which nmap)" == "" ]; then
	echo -e "${yellow}{$red!$yellow} $redNmap Not Found... ${green}Installing Nmap ~ $Colof"

	if [ "$(apt-get install nmap -y)" == "" ]; then
		sudo apt-get install nmap -y
	else
		pkg install nmap -y
	fi

else
	echo -e "${blue}+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"
	sleep .1
	echo -e ""
	echo -e "$cyan  <1> Full scan (with OS detection)"
	echo ""
	echo -e "$cyan  <2> Normal scan (Scan 1000 ports)"
	echo ""
	sleep .1
	echo -e "$yellow  <3> Fast scan (Scan 100 ports only)"
	echo ""
	echo -e "$yellow  <4> Scan IP with specific ports range"
	echo ""
	sleep .1
	echo -e "$green  <5> Scan IP with ports list"
	echo ""
	echo -e "$green  <6> Scan with IP,s range"
	echo ""
	sleep .1
	echo -e "$white  <7> Scan IP,s from txt file"
	echo ""
	echo -e "$white  <8> Scan IP,s and Ports From txt file"
	echo ""
	sleep .1
	echo -e "$blue  <9> About me ^_^"
	echo ""
	echo -e "$red  <00> Exit .. $Colof"
	echo ""
	options
fi
}

restart() {
	clear
	banner
	echo -e "$green    Welcome Back .. ^_^ $Colof"
	echo " "
	main_page
}

close() {
		echo ""
		echo ""
		echo -e "$green"
		echo "   ★─▄█▀▀║░▄█▀▄║▄█▀▄║██▀▄║─★"
		echo "   ★─██║▀█║██║█║██║█║██║█║─★"
		sleep .1
		echo "   ★─▀███▀║▀██▀║▀██▀║███▀║─★"
		echo "   ★───────────────────────★"
		sleep .1
		echo "   ★───▐█▀▄─ ▀▄─▄▀ █▀▀──█───★"
		echo "   ★───▐█▀▀▄ ──█── █▀▀──▀───★"
		sleep .1
		echo "   ★───▐█▄▄▀ ──▀── ▀▀▀──▄───★ "
		echo -e "$yellow   #${red}Thanks for use my tool ${white}^_^ $Colof"
		sleep 2
		clear
		exit
	}

options() {
	echo -e "$green"
	read -p " ##>Enter Option Number : " option 

	if [ $option == "1" ]; then
		clear
		banner

		echo -e "$white"
		read -p " >>>}Enter Ip target: " target1
		echo " "
		echo -e "${white}++++++++++>[ Scaning ${green}$target1 ${white}]<++++++++++ $blue"

		until [ -e $target1 ]; do
			mkdir $target1
		done
		nmap -A -sV $target1 -oN $target1.txt
		mv $target1.txt $target1
		echo ""
		echo -e "$green (#) Scan results are saved in tool directory .."
		echo ""
		printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n     $(date)" >> $target1/$target1.txt
		sleep 3
		
		printf "\n"
		echo -e "$green [99] Main Menu"
		echo -e "$red [00] Exit .. "
		echo -e "$white"
		read -p "   ##> " end
		echo ""
		echo ""

		if [ $end == "99" ]; then
			sleep 1
			restart
		else
			close
			sleep 2
			clear
			exit
		fi

###########################################
	elif [ $option == "2" ]; then
		clear
		banner
		echo -e "$cyan"
		read -p " >>>}Enter Ip target: " target1
		echo " "
		echo -e "$yellow++++++++++>[ Scaning ${red}$target1 $yellow]<++++++++++$red"

		until [ -e $target1 ]; do
			mkdir $target1
		done
		nmap $target1 -oN $target1.txt
		mv $target1.txt $target1
		echo ""
		echo -e "$green (#) Scan results are saved in tool directory .."
		echo ""
		printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n     $(date)" >> $target1/$target1.txt
		sleep 3
		
		printf "\n"
		echo -e "$green [99] Main Menu"
		echo -e "$red [00] Exit .. "
		echo -e "$white"
		read -p "   ##> " end
		echo ""
		echo ""

		if [ $end == "99" ]; then
			sleep 1
			restart
		else
			close
			sleep 2
			clear
			exit 
		fi

###########################################
	elif [ $option == "3" ]; then
		clear
		banner
		echo -e "$yellow"
		read -p " >>>}Enter Ip target: " target1
		echo " "
		echo -e "$green++++++++++>[ Scaning ${blue}$target1 $green]<++++++++++$yellow"

		until [ -e $target1 ]; do
			mkdir $target1
		done
		nmap -F $target1 -oN $target1.txt
		mv $target1.txt $target1
		echo ""
		echo -e "$green (#) Scan results are saved in tool directory .."
		echo ""
		printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n     $(date)" >> $target1/$target1.txt
		sleep 3
		
		printf "\n"
		echo -e "$cyan [99] Main Menu"
		echo -e "$red [00] Exit .. $green"
		read -p "   ##> " end
		echo ""
		echo ""

		if [ $end == "99" ]; then
			sleep 1
			restart
		else
			close
			sleep 1
			clear
			exit
		fi

###########################################
	elif [ $option == "4" ]; then
		clear
		banner
		echo -e "$white"
		read -p " --->Enter IP target: " target1
		echo -e " $green"
		read -p "  >>>}Enter start port: " port1
		echo -e "$cyan"
		read -p "   >>>}Enter end port: " port2
		echo " "
		echo " "
		echo -e "$blue+>[ Scan ${white}$target1 ${blue}from port ${green}$port1 ${blue}to port ${cyan}$port2 ${blue}]<+$green"

		res_dir="$target1-$port1~$port2"

		until [ -e $res_dir ]; do
			mkdir $res_dir
		done
		nmap -p $port1"-"$port2 $target1 -oN $res_dir.txt
		mv $res_dir.txt $res_dir 
		echo ""
		echo -e "$green (#) Scan results are saved in tool directory .."
		echo ""
		printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n          $(date)" >> $res_dir/$res_dir.txt
		sleep 3
		
		printf "\n"
		echo -e "$yellow [99] Main Menu"
		echo -e "$red [00] Exit .. $white"
		read -p "   ##> " end
		echo ""
		echo ""

		if [ $end == "99" ]; then
			sleep 1
			restart
		else
			close
			sleep 2
			clear
			exit
		fi

###########################################
	elif [ $option == "5" ]; then
		clear
		banner
		echo -e "$cyan"
		read -p " >>>}Enter Ip target: " target1
		echo -e "$blue "
		read -p "  -->Enter ports list path: " ports_lst

				################################

		until [ -e $ports_lst ]; do
        	echo -e "$yellow [!]$red Ports list not exists .."
        	echo ""
        	sleep .2
        	echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
        	sleep 2
       		exit

		done
				################################

		if [ -s $ports_lst ]; then
			echo " "
        	echo -e " $green  [#]$cyan Ports list imorted success"
        	sleep 2
        	clear
		
		else
        	echo -e "$yellow [!]$red Ports list is empty .. "
        	echo ""
        	sleep .5
        	echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
        	sleep 2
        	exit
		fi
				################################
		clear
		banner

		for port in $(cat $ports_lst); do
			
			echo -e "${red}++++++>[ Scaning ${white}$target1 ${red}Port= ${green}$port $red]<++++++ $cyan"

			op_file="$target1-$port"

			until [ -e $op_file ]; do
				mkdir $op_file
			done

			nmap $target1 -p $port -oN $op_file.txt
			
			mv $op_file.txt $op_file
			echo -e "$white --------------------------------------------------------------------------"
			echo ""
			printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n     $(date)" >> $op_file/$op_file.txt
			sleep 3	
		done
		
		echo -e "$blue [99] Main Menu"
		echo -e "$red [00] Exit .."
		read -p "   ##> " end
		echo ""
		echo ""

		if [ $end == "99" ]; then
			sleep 1
			restart
		else
			close
			sleep 2
			clear
			exit
		fi

###########################################
	elif [ $option == "6" ]; then
		option6() {
			clear
			banner
			echo -e "$yellow++++> For examble (range=$red 192.168.1.6-10${yellow})"
			read -p "  >>>}Enter targets range: " target
			echo ""
			echo -e "${green}* Select scan method .."
			echo -e "$blue [1] Fast scan"
			echo -e "$white  [2] Full scan"
			echo -e "$cyan   [3] Normal scan"
			echo -e "$green"
			read -p "##> " method
			sleep 1

			clear
			banner
			echo -e "$green++++++>[ Scaning targets ${white}$target ${green}]<+++++ $yellow"

			until [ -e $target ]; do
				mkdir $target
			done

			if [ $method == "1" ]; then
				nmap -F $target -oN $target.txt

			elif [ $method == "2" ]; then
				nmap -A $target -oN $target.txt

			elif [ $method == "3" ]; then
				nmap $target -oN $target.txt
			else
				echo ""
				echo -e "$yellow  >>{!}$red Err .. Select scan method again .. "
				sleep 3
				option6
			fi

			mv $target.txt $target
			echo ""
			echo -e "$green (#) Scan results are saved in tool directory .."
			echo "" 
			printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n            $(date)" >> $target/$target.txt
			sleep 2
			
			printf "\n"
			echo -e "$green [99] Main Menu"
			echo -e "$red [00] Exit .. $white"
			read -p "   ##> " end
			echo ""
			echo ""

			if [ $end == "99" ]; then
				sleep 1
				restart
			else
				echo ""
				echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
				sleep 2
				clear
			fi
		}
		option6

###########################################
	elif [ $option == "7" ]; then
		option7() {
			clear
			banner
			echo -e "$red"
			read -p "  >>>}Enter IP,s list path: " ip_lst

			until [ -e $ip_lst ]; do
				echo -e "$yellow {!}$red IP list not exists .."
				echo " "
				sleep .1
				echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
				sleep 2
				exit
			done

			if [ -s $ip_lst ]; then
				echo ""
				echo -e "$cyan (*) IP list imported success "
				sleep .5
			else
				echo ""
				echo -e "$yellow  {!} IP list is empty .."
				echo ""
				echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
				sleep 2
				clear
				exit
			fi


			echo ""
			echo -e "$cyan* Select scan method .."
			echo -e "$blue [1] Fast scan"
			echo -e "$green  [2] Full scan"
			echo -e "$yellow   [3] Normal scan"
			echo -e "$white"
			read -p "##> " method
			sleep 1

			clear
			banner
			echo -e "$white+++++++>[ Scaning IP,s From IP,s list ]<+++++++ $green"

			until [ -e IP-List-Scan ]; do
				mkdir IP-List-Scan
			done

			if [ $method == "1" ]; then
				nmap -F -iL $ip_lst -oN IP-List-Scan.txt

			elif [ $method == "2" ]; then
				nmap -A -iL $ip_lst -oN IP-List-Scan.txt

			elif [ $method == "3" ]; then
				nmap -iL $ip_lst -oN IP-List-Scan.txt

			else
				echo ""
				echo -e "$yellow  >>{!}$red Err .. Select scan method again .. $Colof"
				sleep 2
				option6
			fi

			mv IP-List-Scan.txt IP-List-Scan
			echo ""
			echo -e "$green (#) Scan results are saved in tool directory .."
			echo "" 
			printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n            $(date)" >> IP-List-Scan/IP-List-Scan.txt
			sleep 2
			
			printf "\n"
			echo -e "$yellow [99] Main Menu"
			echo -e "$red [00] Exit .. $blue"
			read -p "    ##> " end
			echo ""
			echo ""

			if [ $end == "99" ]; then
				sleep 1
				restart
			else
				echo ""
				echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
				sleep 2
				clear
				exit
			fi
		}
		option7

###########################################
	elif [ $option == "8" ]; then
		clear
		banner
		echo -e "$blue"
		read -p "  >>}Enter IP,s list path: " ip_lst

		until [ -e $ip_lst ]; do
			echo " "
	        echo -e "$yellow [!]$red Ip,s list not exists .."
	        echo ""
	        sleep .2
	        echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
	        sleep 2
	       	exit
	    done
	    	#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

	    if [ -s $ip_lst ]; then
			echo " "
	        echo -e "$white   [#]$green IP,s list imported success"
	        sleep 1
		else
			echo " "
	       	echo -e "$yellow [!]$blue Ip list is empty .. "
	       	echo ""
	       	sleep .5
	       	echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
	       	sleep 2
	        exit
		fi
###############################################################3

		echo -e "$cyan"
		read -p "  >>>}Enter Ports list path: " port_lst
		echo ""

	    until [ -e $port_lst ]; do
	       	echo " "
	        echo -e "$yellow [!]$red Ports list not exists .."
	        echo ""
	        sleep .2
	        echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
	        sleep 2
	       	exit
		done
				##########################################

		if [ -s $port_lst ]; then
			echo " "
	       	echo -e "$green   [#]$white Ports list imported success"
	       	sleep 2
	        clear
		else
			echo ""
	       	echo -e "$blue [!]$white Port list is empty .. "
	       	echo ""
	       	sleep .5
	       	echo -e "$yellow      ! ${red}Exiting .. ${white}~ $Colof"
	       	sleep 2
	       	exit
		fi

		clear
		banner
		echo -e "$red++++>[ Scaning ${green}IP,s ${red}and ${cyan}Ports ${red}From list ]<++++"

		until [ -e IP-List-Scan ]; do
			mkdir IP-List-Scan
		done

		for port in $(cat $port_lst); do
			echo -e "$yellow"
			nmap -iL $ip_lst -p $port -oN IP-List-Scan.txt
			echo -e "$red+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+"
		done

		mv IP-List-Scan.txt IP-List-Scan 
		echo ""
		echo -e "$green (#) Scan results are saved in tool directory .."
		echo ""
		printf "\n\n    =====> Scanned By: RV Scan [V1.0] <=====\n            $(date)" >> IP-List-Scan/IP-List-Scan.txt
		sleep 2
		printf "\n"
		echo -e "$cyan [99] Main Menu"
		echo -e "$red [00] Exit .. $yellow"
		echo ""
		read -p "  ##> " end
		echo ""
		echo ""

		if [ $end == "99" ]; then
			sleep 1
			restart
		else
			close
			sleep 2
			clear
			exit
		fi

#####################################
	elif [ $option == "9" ]; then
		clear 
		banner
		echo -e "$green"
		cat README.md
		echo ""
		echo ""
		echo -e "$green   (99) Main menu "
		echo -e "$red    (00) Exit .."
		echo -e "$blue"
		read -p " ##> " end

		if [ $end == "99" ]; then
			sleep 1
			restart
		else
			close
			sleep 2
			clear
			exit
		fi

#########################
	
	elif [ $option == "00" ]; then
		close
		

#########################

	else
		echo ""
		echo -e "$red {!}$green Incorrect option Please try again .."
		echo ""
		echo -e "$blue     [*]$white Restarting .. ~"
		sleep 2
		restart

	fi
}

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
###############
############################
chmod +x *.sh
apt-get install debianutils -y
clear
banner
main_page
