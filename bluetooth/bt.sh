#!/bin/sh
case $1 in
    post)
        modprobe -r btusb
        sleep 1
        service bluetooth restart
        sleep 1
        modprobe btusb
        ;;
esac

