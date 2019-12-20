# place this code in (~/.bashrc or ~/.bash_profile or ~/.zshrc) files
cd () {
	builtin cd "$@"
	if [[ -f .nvmrc ]]
	then
		nvm use > /dev/null
	fi
}