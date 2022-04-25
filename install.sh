#!/bin/bash

# install script
# Usage:
#       install.sh [options]
#       install.sh -s <tmux|alacritty|zellij>
#       install.sh -c <soft|hard>
#       install.sh -t <true|false>
#

type_flag="hard"
cover_flag=false
all_flag=true

home_path=$(echo ~)
root_path=$(cd "$(dirname "$0")";pwd)

declare -A sys_cfg_map
declare -A res_cfg_map
declare -A install_map

install_map["tmux"]=0
install_map["alacritty"]=0
install_map["zellij"]=0

sys_cfg_map["tmux"]=${home_path}"/.tmux.conf"
sys_cfg_map["alacritty"]=${home_path}"/.config/alacritty"
sys_cfg_map["zellij"]=${home_path}"/.config/zellij"

res_cfg_map["tmux"]=${root_path}"/tmux/.tmux.conf"
res_cfg_map["alacritty"]=${root_path}"/alacritty"
res_cfg_map["zellij"]=${root_path}"/zellij"

cfg_color="\033[32m"
end_color="\033[0m"

while getopts ":s:t:c:p" opt
do
    case $opt in
        s)
            flag=0
            for key in ${!install_map[*]}
            do
                if [[ "${key}" == "${OPTARG}" ]]; then
                    flag=1
                fi
            done

            if (( ${flag} != 1 )); then
                echo "invalid param -s"
                exit 1
            fi

            for key in ${!install_map[*]}
            do
                if [[ "${key}" == "${OPTARG}" ]]; then
                    install_map["${key}"]=$((${install_map["${key}"]} + 1))
                    all_flag=false
                fi
            done
            ;;
        t)
            if [[ "${OPTARG}" == "soft" ]]; then
                type_flag="soft"
            elif [[ "${OPTARG}" == "hard" ]]; then
                type_flag="hard"
            else
                echo "invalid param -t"
                exit 1;
            fi
            ;;
        c)
            if [[ "${OPTARG}" == "true" ]]; then
                cover_flag=true
            elif [[ "${OPTARG}" == "false" ]]; then
                cover_flag=false
            else
                echo "invalid param -c"
                exit 1;
            fi
            ;;
        p)
            echo -e "Usage:\n\t install.sh [options] \n"
            echo -e "\t install.sh \t default install all options"
            echo -e "\t install.sh -s <tmux|zellij|alacritty> \t select one section install"
            echo -e "\t install.sh -t <soft|hard> \t hard means copy config file, soft means crate a soft link"
            echo -e "\t install.sh -c <true|false> \t true means replace the original configuration with the example configuration, false means retain original configuration"
            echo "";;
        ?)
            echo -e "Syntax Error\n"
            echo -e "Usage:\n\t install.sh [options] \n"
            echo -e "\t install.sh \t default install all options"
            echo -e "\t install.sh -s <tmux|zellij|alacritty> \t select one section install"
            echo -e "\t install.sh -t <soft|hard> \t hard means copy config file, soft means crate a soft link"
            echo -e "\t install.sh -c <true|false> \t true means replace the original configuration with the example configuration, false means retain original configuration"
            echo ""
            exit 1;;
    esac
done

if [[ "${all_flag}" == "true" ]]; then
    for key in ${!install_map[*]}
    do
        install_map["${key}"]=$((${install_map["${key}"]} + 1))
    done
fi

while true
do
    echo -en "cover: ${cover_flag}, type: ${type_flag} \n"
    echo -en "install list:\n"
    for key in ${!install_map[*]}
    do
       if (( ${install_map[${key}]} != 0 )); then
           echo -en "\t${cfg_color}${key}${end_color}\n"
       fi
    done

    read -r -p "Are You Sure? [Y/n] " input

    case $input in
        [yY][eE][sS]|[yY])
            break
            ;;
        [nN][oO]|[nN])
            echo "exit install script"
            exit 1
            ;;
        *)
            echo "Invalid input..."
            ;;
    esac
done

echo ""

if [[ "${type_flag}" == "soft" ]]; then
    # soft link
    for key in ${!install_map[*]}
    do
        if (( ${install_map[${key}]} == 0 )); then
            continue
        fi

        if [ -e ${sys_cfg_map[${key}]} ] && [ ${cover_flag} ==  "true" ]; then
            rm -rf ${sys_cfg_map[${key}]}
            ln -s ${res_cfg_map[${key}]} ${sys_cfg_map[${key}]}
            echo -e "create a ${cfg_color}${key}${end_color} soft link:  ${cfg_color}${sys_cfg_map[${key}]}${end_color} "
        elif [ -e ${sys_cfg_map[${key}]} ]; then
            echo -e "${cfg_color}${sys_cfg_map[${key}]}${end_color} exsit"
            continue
        else
            ln -s ${res_cfg_map[${key}]} ${sys_cfg_map[${key}]}
            echo -e "create a ${cfg_color}${key}${end_color} soft link:  ${cfg_color}${sys_cfg_map[${key}]}${end_color}"
        fi
    done

else
    # copy file
    for key in ${!install_map[*]}
    do
        if (( ${install_map[${key}]} == 0 )); then
            continue
        fi

        if [ -e ${sys_cfg_map[${key}]} ] && [ ${cover_flag} ==  "true" ]; then
            rm -rf ${sys_cfg_map[${key}]}
            cp -rf ${res_cfg_map[${key}]} ${sys_cfg_map[${key}]}
            echo -e "create a ${cfg_color}${key}${end_color} config file:  ${cfg_color}${sys_cfg_map[${key}]}${end_color}"
        elif [ -e ${sys_cfg_map[${key}]} ]; then
            echo -e "${cfg_color}${sys_cfg_map[${key}]}${end_color} exsit"
            continue
        else
            cp -rf ${res_cfg_map[${key}]} ${sys_cfg_map[${key}]}
            echo -e "create a ${cfg_color}${key}${end_color} config file:  ${cfg_color}${sys_cfg_map[${key}]}${end_color}"
        fi
    done

fi
