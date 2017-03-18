function emrm {
	sudo emerge -cav "$@"
}

alias depclean=emrm
alias emcav=emrm
