# usbLock
A bash script to lock linux with USB

# Requirements
xsecurelock
sox
lsusb
usb device

# About
Runs a loop that checks if a specified USB has been attached. If it hasn't, then a beep is played and xsecurelock is invoked. If you enter your password without reinserting the USB, the loop still runs and keeps you locked out. To remove the lock, reinsert the USB and enter your password.

# Finding a USB
Use lsusb to identify the name of your USB device. Try to find a unique string to your USB such as manufacturer name (PNY,Amazon,Logitech,etc). Edit lock.sh with your favorite text editor and replace the string 'Amazon' with your string.
