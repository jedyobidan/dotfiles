# dotfiles #
My preferred dotfiles for vim, bash, tmux, etc.

## How to add to your environment ##
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

## Extensions ##
If you need to modify .bashrc for different environments, instead of
changing lines in the provided .bashrc, you can also add new bash scripts
in ~/bashrc.d, which will be sourced by .bashrc before it completes,
allowing you to override some of the behavior of .bashrc

In addition, if you need to change PROMPT_COMMAND, be sure to call `__prompt`
in your new prompt command then edit PS1 as necessary. If you call `__prompt`
after another command in PROMPT_COMMAND you will need to save `$?` in a variable
before at the beginning of PROMPT_COMMAND and call `__prompt` with that as an
argument. Example:

```
function __super_prompt(){
    EXIT_CODE = "$?"
    ls -A
    git status
    __prompt $EXIT_CODE
}
```
