## dotfiles ##
My preferred dotfiles for vim, bash, tmux, etc.

### How to add to your environment ###
This repo provides a script that copies all the dotfiles into your 
home directory; here's how to run the script.

- Clone the repo using the url in the gui to your local machine
- cd into the repo
- Run `source dotload.sh`

Note that this does not affect your .bash_profile script; if your 
.bash_profile does not source .bashrc, any changes to .bashrc 
will be reverted on your next login. To fix this, simply add the
following lines to your .bash_profile (if it does not exist, create it
and add these lines).

```
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
```
