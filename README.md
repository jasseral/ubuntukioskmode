# Ubuntu kiosk mode
This script enable an advanced kiosk mode and open firefox with a URL pre configured , 
this was created for atandt a requirement in an upwork contract.

# Previous requirements
Have Ubuntu desktop 18.04 

# How to install

- clone the respository and run  the script `sudo sh enablekioskmode.sh $USER` (as root)

# Important notes
If you are testing please perform this operations using a VM 

# What is new
- sandbox profile is created automatically
- only one tab in firefox is now avaliable
- disabled firefox menu 
- firefox  always stay visible as the main window 
- disabled maximized minimized options
- disabled close firefox option 
- Enabled network-admin (crt + Q) & connection-editor ( crt + W) shortcuts
- Custom right click network menu only show open browser option

# Demo
![Image description](https://i.ibb.co/9yGRfLM/ubuntu.png)