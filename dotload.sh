#!/usr/bin/env bash
SCRIPT=$(readlink -f "$BASH_SOURCE")
BASE=$(dirname "$SCRIPT")

# Copy all standard dot files
cp $BASE/.ansi-colors.sh $HOME
cp $BASE/.bashrc $HOME
cp $BASE/.git-prompt.sh $HOME
cp $BASE/.grep.sh $HOME
cp $BASE/.vimrc $HOME

# bashrc extensions
mkdir $HOME/.bashrc.d
for script in $BASE/.bashrc.d/*.sh; do
	read -p "Install bashrc extension $(basename "$script")? (y/N) " yn
	if [ "$yn" = "y" ]; then
		cp $script $HOME/.bashrc.d
	fi
done

.  ~/.bashrc
echo "Done"
