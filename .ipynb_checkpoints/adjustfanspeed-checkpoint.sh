#!/bin/bash

# Function to enable manual fan control
enable_manual_control() {
    sudo ipmitool raw 0x30 0x30 0x01 0x00
}

# Function to set fan speed
set_fan_speed() {
    local speed=$1
    sudo ipmitool raw 0x30 0x30 0x02 0xff $speed
}

# Function to set automatic fan control
set_automatic_control() {
    sudo ipmitool raw 0x30 0x30 0x01 0x01
}

# Function to display system temperatures
display_temperatures() {
    sensors
}

# Menu
while true; do
    clear
    echo "Fan Speed Control Menu"
    echo "======================"
    echo "1) Enable Manual Control"
    echo "2) Set Fan Speed to 1%"
    echo "3) Set Fan Speed to 5%"
    echo "4) Set Fan Speed to 10%"
    echo "5) Set Fan Speed to 20%"
    echo "6) Set Fan Speed to 30%"
    echo "7) Set Fan Speed to 40%"
    echo "8) Set Fan Speed to 50%"
    echo "9) Set Fan Speed to 60%"
    echo "10) Set Fan Speed to 70%"
    echo "11) Set Fan Speed to 80%"
    echo "12) Set Fan Speed to 90%"
    echo "13) Set Fan Speed to 100%"
    echo "14) Enable Automatic Control"
    echo "15) Display Temperatures"
    echo "16) Exit"
    echo "======================"
    read -p "Select an option: " choice

    case $choice in
        1)
            enable_manual_control
            echo "Manual control enabled."
            ;;
        2)
            set_fan_speed 0x01
            echo "Fan speed set to 1%."
            ;;
        3)
            set_fan_speed 0x05
            echo "Fan speed set to 5%."
            ;;
        4)
            set_fan_speed 0x0A
            echo "Fan speed set to 10%."
            ;;
        5)
            set_fan_speed 0x14
            echo "Fan speed set to 20%."
            ;;
        6)
            set_fan_speed 0x1E
            echo "Fan speed set to 30%."
            ;;
        7)
            set_fan_speed 0x28
            echo "Fan speed set to 40%."
            ;;
        8)
            set_fan_speed 0x32
            echo "Fan speed set to 50%."
            ;;
        9)
            set_fan_speed 0x3C
            echo "Fan speed set to 60%."
            ;;
        10)
            set_fan_speed 0x46
            echo "Fan speed set to 70%."
            ;;
        11)
            set_fan_speed 0x50
            echo "Fan speed set to 80%."
            ;;
        12)
            set_fan_speed 0x5A
            echo "Fan speed set to 90%."
            ;;
        13)
            set_fan_speed 0x64
            echo "Fan speed set to 100%."
            ;;
        14)
            set_automatic_control
            echo "Automatic control enabled."
            ;;
        15)
            display_temperatures
            ;;
        16)
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a number between 1 and 16."
            ;;
    esac

    read -p "Press Enter to continue..."
done
