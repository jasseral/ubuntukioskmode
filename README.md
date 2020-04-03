# Ubuntu kiosk mode
This script enable an advanced kiosk mode and open firefox with a URL pre configured , 
this was created for atandt a requirement in an upwork contract.

# Previous requirements
Have Ubuntu desktop 18.04 

# How to install

- clone the respository and run run the script `sudo sh enablekioskmode.sh` (as root)

# Important notes
If you are testing please perform this operations using a VM 

# What is new
-firefox now always stay visible as the main window in fullscreen mode
-disabled maximized minimized options
-disabled close firefox option 
-Enabled network-admin (<crt> + N) & connection-editor (<crt> + C) shortcuts
-Custom right click network menu is do not showed