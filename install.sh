#!/usr/bin/env bash

help() {
    cat << EOF
Usage: $0 [<options>...]"
    Optios:
      --help|-h        Show help message
      --verbose|-V     Verbose    

EOF

}


# Command
while [ $# -gt 0 ];do
    case ${1} in
        --help|-h)
            help
            exit 0
            ;;
        --verbose|-V)
            set -uex
            ;;
        -*)
            command echo "Error: Invalid Options."
	    exit 1
            ;;
        *)
            ;;
    esac
    shift
done


# Install
ln -s ~/dotfiles/nvim ~/.config

