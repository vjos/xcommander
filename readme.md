# xcommander
Xcom is a small program to check whether there are more GPUs installed than expected, and start X with an eGPU config if necessary.
It replaces the `startx` command found in typical startup scripts.

## Setup
Most systems other than mine will require manual setup.
The automated setup script has been tested on various laptops running Arch Linux with an Aorus Gaming Box and GTX 750ti, it might work for you.
For a larger but more maintained alternative, see [egpu-switcher](https://github.com/hertg/egpu-switcher).

### Manual
* On my system the default xorg config works fine with the igpu, however you may need to diy this depending on the hardware.
* If you have more than one gpu built into your system, set the variable in `xcom`
* Move any required xorg config files (eg egpu-primary-igpu-offload.conf) to `/etc/X11/`.
* Add `~/path/to/xcommander/xcom run` to your `~/.bash_profile` file in place of any pre-existing startx command
* Reboot

### Automated
* Clone repo to `~/programs/xcommander`
* Run setup.sh with elevated permissions
