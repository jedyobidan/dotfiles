function __pyenv_prompt(){
	__prompt
	if [ ! -z "$VIRTUAL_ENV" ]; then
		__prompt_suffix "\[${fgb_Mag}\][v:`basename \"$VIRTUAL_ENV\"`]" 
	fi
}
export PROMPT_COMMAND=__pyenv_prompt