
- install zsh
- remove system shortcuts

- set keyboard input method system from ibus to xim in language support
- run `ibus-setup` in terminal and disable/change the shortcuts 
- https://wiki.archlinux.org/title/IBus
  - (see ctrl+shift+u)                                       
           

-  use `xev` to see keystrokes in the terminal
                                                       
- note: for <kbd>super</kbd> to work properly on ubuntu, install gnome tweaks and change the overview shortcut (right super is fine)
- also check that 'meta' is mapped to win
- https://www.how2shout.com/linux/how-to-disable-super-or-win-key-in-ubuntu-20-04-or-18-04/
- https://askubuntu.com/questions/1080851/ubuntu-18-04-1-not-recognizing-ctrl-alt

```
gsettings list-recursively org.gnome.desktop.wm.keybindings
```

```    
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down ['']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up ['']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up ['']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down ['']
```
