#!/bin/bash

MODE="none"

function verify_mode() {
    if [[ $1 == "-m" || $1 == "--minimal" ]]
    then
        MODE="minimal"

    elif [[ $1 == "-c" || $1 == "--custom" ]]
    then
        MODE="custom"

    else
        echo -e "Invalid mode!\n"
        echo "Choose a option below:"
        echo "-m --minimal"
        echo -e "-c --custom\n"
        echo "Example: "
        echo -e "./start_mode -m\n"
    fi
}

function start_mode() {
    if [ $MODE == "minimal" ]
    then
            echo "Choosen mode: MINIMAL"
            cd ./minimal
            ./minimal_setup.sh

    elif [ $MODE == "custom" ]
    then
            echo "Choosen mode: CUSTOM"
            cd ./custom/nvim
            ./nvim_setup.sh

            cd ..
            ./tmux_setup.sh

    fi
}

verify_mode "$1"
start_mode

