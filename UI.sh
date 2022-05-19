#!/bin/bash

declare -a array=(0 0);
declare first=0;
declare -a array_ID=();
declare -a array_ID_file=(`find . -name "*.txt"`);
declare ID='ID';
declare PW='PW';
declare win=0;
declare lose=0;
declare ID1='';
declare PW1='';
savefile()
{
	echo -e "${ID}\n${PW}\n${win}\n${lose}" > ${ID}.txt
}

check()
{
	array_ID=(`cat ${ID}.txt`)
	[ "${array_ID[1]}" = "${PW}" ] || exit;
}

delfile()
{
	rm -r ${ID}.txt 
	exit
}

screen1()
{
	clear;
	a1='44';
	b1='44';
	c1='44';
	d1='44';
	[ $first -eq 0 ] || case ${array[*]} in
		'0 0') a1='41' ;;
		'0 1') b1='41' ;;
		'1 0') c1='41' ;;
		'1 1') d1='41' ;;
	esac
	echo "                                                      "
	echo -e "\t\t       ____   ___  ____ ___ _       _         "
	echo -e "\t\t      / ___| / _ \/ ___|_ _| |     / |        "
	echo -e "\t\t      \___ \| | | \___ \| || |     | |        "
	echo -e "\t\t       ___) | |_| |___) | || |___  | |        "
	echo -e "\t\t      |____/ \___/|____/___|_____| |_|        "
	echo -e "\t\t          _  _____  _    __  ____  __         "
	echo -e "\t\t         / \|_   _|/ \   \ \/ /\ \/ /         "
	echo -e "\t\t        / _ \ | | / _ \   \  /  \  /          "
	echo -e "\t\t       / ___ \| |/ ___ \  /  \  /  \          "
	echo -e "\t\t      /_/   \_\_/_/   \_\/_/\_\/_/\_\         "
	echo -e "                                              "
	echo -e "\t\t                             2021203088 여준수"
	echo -e "                                                      "
	echo -e "                                                      "
	echo -e "\t\t\t\033[${b1}m   "     JOIN     "   \t\033[0m"      "\t\033[${d1}m  "   SIGN IN   "  \t\033[0m"
	echo -e "\n                                            "
	echo -e "\t\t\t\033[${a1}m   "     EXIT     "   \t\033[0m   "      "\t\033[${c1}m "   SIGN OUT   "  \t\033[0m"
}

screen2()
{
	clear;
	a2='44';
	b2='44';
	c2='44';
	d2='44';
	e2='44';
	[ $first -eq 0 ] || case ${array[*]} in
        '0 0') a2='41' ;;
        '0 1') b2='41' ;;
        '1 0') c2='41' ;;
        '0 2') d2='41' ;;
		'1 1') array[1]=2; e2='41';;
		'1 2') e2='41' ;;
    esac;
	echo ""
	echo " "
	echo -e "\t\t      ____ ___ ____ _   _   ___ _   _"
	echo -e "\t\t     / ___|_ _/ ___| \ | | |_ _| \ | |"
	echo -e "\t\t     \___ \| | |  _|  \| |  | ||  \| |"
	echo -e "\t\t      ___) | | |_| | |\  |  | || |\  |"
	echo -e "\t\t     |____/___\____|_| \_| |___|_| \_|"
	echo ""
	echo ""
	echo -e "\t\t\033[${d2}m         "     ${ID}     "         \033[0m   "      "\033[${e2}m "   Duplicate check   " \033[0m"
	echo ""
	echo -e "\t\t\033[${b2}m         "     ${PW}     "         \033[0m"
	echo ""	
	echo ""
	echo ""
	echo -e "\t\t\t\033[${a2}m "     SIGN IN     " \033[0m"      "   \033[${c2}m   "   EXIT   "   \t\033[0m"
}

screen3()
{
	clear;
    a3='44';
    b3='44';
    c3='44';
    d3='44';
    [ $first -eq 0 ] || case ${array[*]} in
        '0 0') a3='41' ;;
        '1 0') b3='41' ;;
       '0 1'|'1 1') c3='41' ;;
        '0 2'|'1 2') d3='41' ;;
	esac
    echo ""
    echo " "
    echo -e "\t\t    ____ ___ ____ _   _    ___  _   _ ____"
    echo -e "\t\t   / ___|_ _/ ___| \ | |  / _ \| | | |_  _|"
    echo -e "\t\t   \___ \| | |  _|  \| | | | | | | | | | |"
    echo -e "\t\t    ___) | | |_| | |\  | | |_| | |_| | | |"
    echo -e "\t\t   |____/___\____|_| \_|  \___/ \___/  |_|"
    echo ""
    echo ""
	echo ""
    echo -e "\t\t\t\033[${d3}m              "     ${ID}     "              \t\033[0m"
    echo ""
    echo -e "\t\t\t\033[${c3}m              "     ${PW}     "              \t\033[0m"
    echo "" 
    echo ""
    echo ""
    echo -e "\t\t\t\033[${a3}m "     SIGN OUT     " \033[0m       "      "\033[${b3}m   "   EXIT   "   \t\033[0m"
}

screen4()
{
    clear;
    a4='44';
    b4='44';
    c4='44';
    d4='44';
    [ $first -eq 0 ] || case ${array[*]} in
        '0 0') a4='41' ;;
        '1 0') b4='41' ;;
       '0 1'|'1 1') c4='41' ;;
        '0 2'|'1 2') d4='41' ;;
    esac
    echo ""
    echo " "
    echo -e "\t\t    _ ____    _     ___   ____ ___ _   _ "
    echo -e "\t\t   / |  _ \  | |   / _ \ / ___|_ _| \ | |"
    echo -e "\t\t   | | |_) | | |  | | | | |  _ | ||  \| |"
    echo -e "\t\t   | |  __/  | |__| |_| | |_| || || |\  |"
    echo -e "\t\t   |_|_|     |____|\___/ \____|___|_| \_|"
    echo ""
    echo ""
	echo ""
    echo -e "\t\t\t\033[${d4}m              "     ${ID}     "              \t\033[0m"
    echo ""
    echo -e "\t\t\t\033[${c4}m              "     ${PW}     "              \t\033[0m"
    echo "" 
    echo ""
    echo ""
    echo -e "\t\t\t\033[${a4}m   "     LOGIN     "  \033[0m       "      "\033[${b4}m   "   EXIT   "   \t\033[0m"
}

screen5()
{
    clear;
    a5='44';
    b5='44';
    c5='44';
    d5='44'; 
    [ $first -eq 0 ] || case ${array[*]} in
        '0 0') a5='41' ;;
        '1 0') b5='41' ;;
       '0 1'|'1 1') c5='41' ;;
        '0 2'|'1 2') d5='41' ;;
    esac
    echo ""
    echo " "
    echo -e "\t\t   ____  ____    _     ___   ____ ___ _   _ "
    echo -e "\t\t  |___ \|  _ \  | |   / _ \ / ___|_ _| \ | |"
    echo -e "\t\t    __) | |_) | | |  | | | | |  _ | ||  \| |"
    echo -e "\t\t   / __/|  __/  | |__| |_| | |_| || || |\  |"
    echo -e "\t\t  |_____|_|     |____|\___/ \____|___|_| \_|"
    echo ""
    echo ""
    echo ""
    echo -e "\t\t\t\033[${d5}m              "     ${ID}     "              \t\033[0m"
    echo ""
    echo -e "\t\t\t\033[${c5}m              "     ${PW}     "              \t\033[0m"
    echo "" 
    echo ""
    echo ""
    echo -e "\t\t\t\033[${a5}m   "     LOGIN     "  \033[0m       "      "\033[${b5}m   "   EXIT   "   \t\033[0m"
}

screen6()
{
	clear;
	echo ""
    echo ""
    echo ""
    echo ""
    echo ""
    echo ""
    echo ""
	echo ""
    echo "                  ____  _   _  ____ ____ _____ ____ ____"
    echo "                 / ___|| | | |/ ___/ ___| ____/ ___/ ___|"
    echo "                 \___ \| | | | |  | |   |  _| \___ \___ \ "
    echo "                  ___) | |_| | |__| |___| |___ ___) |__) |"
    echo "                 |____/ \___/ \____\____|_____|____/____/"
    echo ""
    echo ""
    echo ""
    echo "" 
    echo ""
    echo ""
    echo ""
	exit
}

screen1_x()
{
	screen1
	while true
	do
		key='';
		a='';
		b='';
		read -s -n1 a;
		if [ -z $a ];then
			case ${array[*]} in 
				'0 0') exit;;
				'0 1') array=(0 0); screen4_x; first=0; return;;
				'1 0') array=(0 0); screen3_x; firsi=0; return;;
				'1 1') array=(0 0); screen2_x; first=0; return;;
			esac
		fi
		if [ $a = '' ];then
			read -s -n1 b;
			if [ $b = '[' ];then
	
				read -s -n1 key;
				case "${key}" in
					A) [ ${array[1]} -eq 0 ] && array[1]=1 ;;
					B) [ ${array[1]} -eq 1 ] && array[1]=0 ;;
					C) [ ${array[0]} -eq 0 ] && array[0]=1 ;;
					D) [ ${array[0]} -eq 1 ] && array[0]=0 ;;
				esac
			fi
			screen1
			first=1;
		fi
	done
}

screen2_x()
{
    screen2
    while true
    do
        key='';
        a='';
        b='';
        read -s -n1 a;
        if [ -z $a ];then
            case ${array[*]} in
                '0 0') [[ array_ID_file[*] =~ "${ID}.txt" ]] && exit || savefile; exit;;
                '1 0') exit;;
                '1 1'|'1 2') if [[ ${array_ID_file[*]} =~ "${ID}.txt" ]];then
								echo "같은 ID 존재"
							else
								echo "회원 가입 가능"
							fi
							exit;;
                '0 1') read -p "PW : " PW; screen2;;
				'0 2') read -p "ID : " ID; screen2;;
        	esac
		fi
        if [ $a = '' ];then
            read -s -n1 b;
            if [ $b = '[' ];then

                read -s -n1 key;
                case "${key}" in
                    A) [ ${array[1]} -lt 2 ] && array[1]=`expr ${array[1]} + 1`;;
                    B) [ ${array[1]} -gt 0 ] && array[1]=`expr ${array[1]} - 1`;;
                    C) [ ${array[0]} -lt 1 ] && array[0]=`expr ${array[0]} + 1`;;
                    D) [ ${array[0]} -gt 0 ] && array[0]=`expr ${array[0]} - 1`;;
                esac
            fi
			screen2
			first=1;
        fi
    done
}

screen3_x()
{
    screen3
    while true
    do
        key='';
        a='';
        b='';
        read -s -n1 a;
        if [ -z $a ];then
            case ${array[*]} in
                '0 0') check; delfile;;
                '1 0') exit;;
                '0 1'|'1 1') read -p "PW : " PW; screen3;;
                '0 2'|'1 2') read -p "ID : " ID; screen3;;
            esac
        fi
        if [ $a = '' ];then
            read -s -n1 b;
            if [ $b = '[' ];then

                read -s -n1 key;
                case "${key}" in
                    A) [ ${array[1]} -lt 2 ] && array[1]=`expr ${array[1]} + 1`;;
                    B) [ ${array[1]} -gt 0 ] && array[1]=`expr ${array[1]} - 1`;;
                    C) [ ${array[0]} -lt 1 ] && array[0]=`expr ${array[0]} + 1`;;
                    D) [ ${array[0]} -gt 0 ] && array[0]=`expr ${array[0]} - 1`;;
                esac
            fi
            screen3
            first=1;
        fi
    done
}

screen4_x()
{
    screen4
    while true
    do
        key='';
        a='';
        b='';
        read -s -n1 a;
        if [ -z $a ];then
            case ${array[*]} in
                '0 0') check; ID='ID'; PW='PW'; ID1=$ID; PW1=$PW ;screen5_x; first=0; return;;
                '1 0') exit;;
                '0 1'|'1 1') read -p "PW : " PW; screen4;;
                '0 2'|'1 2') read -p "ID : " ID; screen4;;
            esac
        fi
        if [ $a = '' ];then
            read -s -n1 b;
            if [ $b = '[' ];then

                read -s -n1 key;
                case "${key}" in
                    A) [ ${array[1]} -lt 2 ] && array[1]=`expr ${array[1]} + 1`;;
                    B) [ ${array[1]} -gt 0 ] && array[1]=`expr ${array[1]} - 1`;;
                    C) [ ${array[0]} -lt 1 ] && array[0]=`expr ${array[0]} + 1`;;
                    D) [ ${array[0]} -gt 0 ] && array[0]=`expr ${array[0]} - 1`;;
                esac
            fi
            screen4
            first=1;
        fi
    done
}

screen5_x()
{   
    screen5
    while true
    do  
        key='';
        a='';
        b='';
        read -s -n1 a;
        if [ -z $a ];then
            case ${array[*]} in
                '0 0') check; [ $ID1 != $ID ] && screen6 || exit;;
                '1 0') exit;;
                '0 1'|'1 1') read -p "PW : " PW; screen5;;
                '0 2'|'1 2') read -p "ID : " ID; screen5;;
            esac
        fi
        if [ $a = '' ];then
            read -s -n1 b;
            if [ $b = '[' ];then
    
                read -s -n1 key;
                case "${key}" in
                    A) [ ${array[1]} -lt 2 ] && array[1]=`expr ${array[1]} + 1`;;
                    B) [ ${array[1]} -gt 0 ] && array[1]=`expr ${array[1]} - 1`;;
                    C) [ ${array[0]} -lt 1 ] && array[0]=`expr ${array[0]} + 1`;;
                    D) [ ${array[0]} -gt 0 ] && array[0]=`expr ${array[0]} - 1`;;
                esac
            fi
            screen5
            first=1;
        fi
    done
}

main()
{
	screen1_x
}

main
