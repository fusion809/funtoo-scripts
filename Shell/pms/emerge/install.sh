function emaw {
        emerge --autounmask-write "$@"
}

function emin {
        emerge -av $@
}

function emmr {
        emerge -av @module-rebuild
}

function empr {
        emerge -av @preserved-rebuild
}
