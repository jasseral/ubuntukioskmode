#!/bin/bash

USR=$SUDO_USER

apt-get update -y
apt-get install -y --no-install-recommends openbox pulseaudio freerdp2-x11 gdm3
apt-get install gnome-system-tools
apt-get install xdotool
apt -y -f install

usermod -a -G audio $USR

mv /etc/xdg/openbox/autostart /etc/xdg/openbox/autostart.old
#here config apps for autostart
cat > /etc/xdg/openbox/autostart <<EOF
#xfce-mcs-manager &
#/usr/bin/firefox https://www.google.com &
EOF
mv /etc/gdm3/custom.conf /etc/gdm3/custom-old.conf
cat > /etc/gdm3/custom.conf <<EOF
[daemon]
#WaylandEnable=false
# Enabling automatic login
AutomaticLoginEnable = true
AutomaticLogin = $USR
# Enabling timed login
#  TimedLoginEnable = true
#  TimedLogin = user1
#  TimedLoginDelay = 10
[security]
[xdmcp]
[chooser]
EOF

cat > ~/startfirefox.sh <<EOF
firefox & xdotool search --sync --onlyvisible --pid $! windowactivate key F11
EOF


cat > /var/lib/AccountsService/users/$USR <<EOF
[InputSource0]
xkb=es
[User]
XSession=openbox
SystemAccount=true
EOF
cat > /etc/xdg/openbox/menu.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<openbox_menu xmlns="http://openbox.org/"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://openbox.org/
                file:///usr/share/openbox/menu.xsd">
<menu id="root-menu" label="Openbox 3">
  <item label="Open Firefox">
  e <action name="Execute"><execute>sh ~/startfirefox.sh </execute></action>
  </item>
  <separator />
  <item label="Network Settings">
  e <action name="Execute"><execute>network-admin</execute></action>
  </item>
  <item label="Network Connections">
  e <action name="Execute"><execute>nm-connection-editor</execute></action>
  </item>
</menu>
</openbox_menu>
EOF