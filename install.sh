#!/bin/bash

# install script
# Usage:
#       install.sh [options]
#       install.sh -s <tmux|alacritty|zellij>
#       install.sh -c <soft|hard>
#       install.sh -t <true|false>
#

type_flag=""
cover_flag=false
install_list=()
install_num=0

home_path=$(echo ~)
root_path=$(cd "$(dirname "$0")";pwd)

zellij_cfg_path=${home_path}"/.config/zellij"
alacritty_cfg_path=${home_path}"/.config/alacritty"
tmux_cfg_path=${home_path}"/.tmux.conf"

while getopts ":s:t:c:p" opt
do
    case $opt in
        s)
            if [[ "${OPTARG}" == "tmux" ]]; then
                for((i = 0; i < install_num; i++)); do
                    if [[ ${install_list[i]} == "tmux" ]]; then
                        echo "invalid param -s"
                        exit 1;
                    fi
                done
                install_list[install_num]="tmux"
                install_num=$((install_num + 1))
            elif [[ "${OPTARG}" == "zellij" ]]; then
                for((i = 0; i < install_num; i++)); do
                    if [[ ${install_list[i]} == "zellij" ]]; then
                        echo "invalid param -s"
                        exit 1;
                    fi
                done
                install_list[install_num]="zellij"
                install_num=$((install_num + 1))
            elif [[ "${OPTARG}" == "alacritty" ]]; then
                for((i = 0; i < install_num; i++)); do
                    if [[ ${install_list[i]} == "alacritty" ]]; then
                        echo "invalid param -s"
                        exit 1;
                    fi
                done
                install_list[install_num]="alacritty"
                install_num=$((install_num + 1))
            else
                echo "invalid param -s"
                exit 1;
            fi
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

while true
do
    read -r -p "cover: ${cover_flag}, type: ${type_flag}, Are You Sure? [Y/n] " input

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

if [[ "${type_flag}" == "soft" ]]; then
    for((i = 0; i < install_num; i++)); do
        # tmux
        if [[ "${install_list[i]}" == "tmux" ]]; then
            if [ -e ${tmux_cfg_path} ] && [ ${cover_flag} ==  "true" ]; then
                rm ~/.tmux.conf
                ln -s ${root_path}/tmux/.tmux.conf ${tmux_cfg_path}
                echo "create a tmux soft link:  ${tmux_cfg_path}"
            elif [ -e ${tmux_cfg_path} ]; then
                echo "${tmux_cfg_path} exsit"
                continue
            else
                ln -s ${root_path}/tmux/.tmux.conf ${tmux_cfg_path}
                echo "create a tmux soft link:  ${tmux_cfg_path}"
            fi
        fi

        # alacritty
        if [[ "${install_list[i]}" == "alacritty" ]]; then
            if [ -e ${alacritty_cfg_path} ] && [ ${cover_flag} == "true" ] ; then
                rm -rf ${alacritty_cfg_path}
                ln -s ${root_path}/alacritty ${alacritty_cfg_path}
                echo "create a alacritty soft link:  ${alacritty_cfg_path}"
            elif [ -e ${alacritty_cfg_path} ] ; then
                echo "${alacritty_cfg_path} exsit"
                continue
            else
                ln -s ${root_path}/alacritty ${alacritty_cfg_path}
                echo "create a alacritty soft link:  ${alacritty_cfg_path}"
            fi
        fi

        # zellij
        if [[ "${install_list[i]}" == "zellij" ]]; then
            if [ -e ${zellij_cfg_path} ] && [ ${cover_flag} == "true" ] ; then
                rm -rf ${zellij_cfg_path}
                ln -s ${root_path}/zellij ${zellij_cfg_path}
                echo "create a zellij soft link:  ${zellij_cfg_path}"
            elif [ -e ${zellij_cfg_path} ] ; then
                echo "${zellij_cfg_path} exsit"
                continue
            else
                ln -s ${root_path}/zellij ${zellij_cfg_path}
                echo "create a zellij soft link:  ${zellij_cfg_path}"
            fi
        fi

    done
else
    for((i = 0; i < install_num; i++)); do
        # tmux
        if [[ "${install_list[i]}" == "tmux" ]]; then
            if [ -e ${tmux_cfg_path} ] && [ ${cover_flag} ==  "true" ]; then
                rm ${tmux_cfg_path}
                cp ${root_path}/tmux/.tmux.conf ${tmux_cfg_path}
                echo -e "create a tmux config file:  ${tmux_cfg_path}"
            elif [ -e ${tmux_cfg_path} ]; then
                echo "${tmux_cfg_path} exsit"
                continue
            else
                cp ${root_path}/tmux/.tmux.conf ${tmux_cfg_path}
                echo -e "create a tmux config file:  ${tmux_cfg_path}"
            fi
        fi

        # alacritty
        if [[ "${install_list[i]}" == "alacritty" ]]; then
            if [ -e ${alacritty_cfg_path} ] && [ ${cover_flag} == "true" ] ; then
                rm -rf ${alacritty_cfg_path}
                cp -rf ${root_path}/alacritty ${alacritty_cfg_path}
                echo -e "create a alacritty config file:  ${alacritty_cfg_path}"
            elif [ -e ${alacritty_cfg_path} ] ; then
                echo "${alacritty_cfg_path} exsit"
                continue
            else
                cp -rf ${root_path}/alacritty ${alacritty_cfg_path}
                echo -e "create a alacritty config file:  ${alacritty_cfg_path}"
            fi
        fi

        # zellij
        if [[ "${install_list[i]}" == "zellij" ]]; then
            if [ -e ${zellij_cfg_path} ] && [ ${cover_flag} == "true" ] ; then
                rm -rf ${zellij_cfg_path}
                cp -rf ${root_path}/zellij ${zellij_cfg_path}
                echo -e "create a zellij config file:  ${zellij_cfg_path}"

            elif [ -e ${zellij_cfg_path} ] ; then
                echo "${zellij_cfg_path} exsit"
                continue
            else
                cp -rf ${root_path}/zellij ${zellij_cfg_path}
                echo -e "create a zellij config file:  ${zellij_cfg_path}"
            fi
        fi
        
    done
fi
