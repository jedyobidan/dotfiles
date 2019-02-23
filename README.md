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

## VCS ##
The default files only provide information about any git repos present in 
the prompt. If you'd like VCS info from a different system (SVN, Mercurial,
etc.), then simply create a function that echoes the desired text in an 
extension file and add the function name to the `__vcs_ps1` array.

```
function __awesome_vcs_prompt(){
    echo -n " (repo_info)"
}
__vcs_ps1+=('__awesome_vcs_prompt')
```
