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
- firefox now always stay visible as the main window in fullscreen mode (this feauture is disbled for client requirement)
- disabled maximized minimized options
- disabled close firefox option (this only work with full screen mode but now is disabled for client requirement)
- Enabled network-admin (<crt> + N) & connection-editor (<crt> + C) shortcuts
- Custom right click network menu only show open navigator option