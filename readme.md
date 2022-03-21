# xcommander

## Description
The main script xcom checks whether there are more GPUs installed than expected, and starts X with an eGPU config if needed. 

## Setup
### Automated
Tested only on a T470 running Arch with an Aorus Gaming Box and GTX 750ti.
Simply run setup.sh for my own personal config, it might work for you.

### Manual
* On my system the default xorg config works fine with the igpu, however you may need to diy this depending on the hardware.
* If you have more than one gpu built into your system, set the variable in `xcom`
* Move any required xorg config files (eg egpu-primary-igpu-offload.conf) to `/etc/X11/`.
* Add `~/path/to/xcommander/xcom run` to your `~/.bash_profile` file in place of any pre-existing startx command
* Reboot

