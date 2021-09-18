# Allow (m)locate to search your encrypted $HOME

Implementation of this helpful answer https://askubuntu.com/a/93477

## Installation

1. Add `locate-home.sh` to your shell, `.bashrc` or otherwise
2. Install both systemd units as your user, enable them and start the timer (`make install` should take care of this)
