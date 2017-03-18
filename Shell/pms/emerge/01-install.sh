function emaw {
	sudo emerge --autounmask-write $@
}

function emin {
	sudo emerge -av $@
}

function empr {
	sudo emerge @preserved-rebuild
}
