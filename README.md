# dotfiles
~~I followed the guide from here: https://www.atlassian.com/git/tutorials/dotfiles.~~

Now using a separate working directory with symlinks created by GNU Stow: https://www.gnu.org/software/stow/manual/stow.html.

## Installation

1. Install GNU Stow
2. Clone dotfiles
3. IMPORTANT: Create .config folder if it doesn't already exist (otherwise, it will be created as a symlink, meaning future files added there by other apps will be included in the first folder that was stowed)
4. Stow each directory

## TODO
* Create function/script for more graceful stowing when files already exist.


## Features

### Karabiner-Elements
* Remap capslock to Ctrl/Esc (depending on my mood).
* Complex modification for Shift+Shift to enable/disable capslock.
* Complex modification to change escape key to tilde when used with left_gui or left_control.

### Oh My Zsh and zshrc
~~* Because my dotfiles alias relies on having a different working directory, the oh-my-zsh git plugin doesn't detect which branch it's on for the custom prompt. To fix:
    * Add .oh-my-zsh/custom/my_functions.zsh to change working directory for git in git_prompt_info() function based on current working directory.
    * Add a custom theme based on robbyrussell to change the prompt prefix when in home.~~
* Using stow, my new **dotfiles** alias assumes these files are stored in **~/.dotfiles**.
* Alias **sdf** for **dotfiles** ("**s**tellar **d**ot**f**iles"

### Vim
* Todo
