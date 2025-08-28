# Flutter Wireless ADB Connector

A simple script that automatically detects when an Android device is plugged in via USB and enables **wireless debugging** (ADB over Wi-Fi). This allows Flutter developers to run and test apps without keeping the USB cable connected.

---

## Features

- Detects USB connection automatically  
- Enables ADB over TCP/IP  
- Connects your device wirelessly  
- Works on lightweight shells (ash, bash) on Linux  

---

## Requirements

- Android device with Developer Options enabled  
- USB debugging enabled  
- Linux machine with `adb` (Android Platform Tools) installed  

---

## Installation

1. Clone this repository:

```sh
git clone https://github.com/yourusername/flutter-wireless-adb.git
cd flutter-wireless-adb 
```
2.Make the script executable:

```sh
chmod +x flutter_wireless.sh

 ```
## Usage
1.Plug in your Android device via USB.
2.Run the script:

```sh
./flutter_connect.sh
```
### The script will:
-Wait for your device
-Detect its IP address
-Enable TCP/IP mode on port 5555
-Connect wirelessly
