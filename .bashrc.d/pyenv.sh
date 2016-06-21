function __pyenv_prompt(){
	__prompt
	if [ ! -z "$VIRTUAL_ENV" ]; then
		local base=`basename $VIRTUAL_ENV`
		__prompt_suffix "\[${fgb_Mag}\][env:$base]" 
	fi
}
export PROMPT_COMMAND=__pyenv_prompt