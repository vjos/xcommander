#!/bin/sh

# copy egpu config to /etc/X11
cp egpu-primary-igpu-offload.conf /etc/X11/

# add to .bash_profile, uses tty1 and tty2 for xcom by default
usr=$(logname)
cat >> $usr/.bash_profile << EOM

# startx on tty 1/2
tty=\$(fgconsole 2>/dev/null)
if [ "\$tty" = "1" ] || [ "\$tty" = "2" ]
then
    ~/programs/xcommander/xcom run
fi

EOM


