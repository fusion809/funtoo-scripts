function gvd {
	pushd "$1"
	gvim
	popd
}

function vd {
	pushd "$1"
	vim
	popd
}
