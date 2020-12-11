# dotfiles
~~I followed the guide from here: https://www.atlassian.com/git/tutorials/dotfiles.~~

Now using a separate working directory with symlinks created by GNU Stow: https://www.gnu.org/software/stow/manual/stow.html.



# Features

## Karabiner-Elements
* Remap capslock to Ctrl/Esc (depending on my mood).
* Complex modification for Shift+Shift to enable/disable capslock.
* Complex modification to change escape key to tilde when used with left_gui or left_control.

## Oh My Zsh and zshrc
* ~~Because my dotfiles alias relies on having a different working directory, the oh-my-zsh git plugin doesn't detect which branch it's on for the custom prompt. To fix:
    * Add .oh-my-zsh/custom/my_functions.zsh to change working directory for git in git_prompt_info() function based on current working directory.
    * Add a custom theme (stellarwill) based on robbyrussell to change the prompt prefix when in home.~~
* Using stow, my new **dotfiles** alias assumes these files are stored in **~/.dotfiles/**.

## Vim
* TBD
