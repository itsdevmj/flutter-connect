#!/bin/bash

# Check if adb is installed
if ! command -v adb &> /dev/null
then
    echo "adb not found. Please install Android platform-tools."
    exit 1
fi

echo "Waiting for device to be connected..."
adb wait-for-device

# Get device IP
DEVICE_IP=$(adb shell ip route | awk '{print $9}' | head -n 1)

if [ -z "$DEVICE_IP" ]; then
    echo "Could not get device IP. Make sure Wi-Fi is enabled."
    exit 1
fi

echo "Device connected via USB."
echo "Device IP: $DEVICE_IP"

# Enable TCP/IP mode on port 5555
adb tcpip 5555
sleep 2

# Connect over WiFi
adb connect "$DEVICE_IP:5555"

if [ $? -eq 0 ]; then
    echo "Connected to $DEVICE_IP:5555 wirelessly!"
    echo "You can now disconnect the USB cable."
else
    echo "Failed to connect wirelessly."
fi
