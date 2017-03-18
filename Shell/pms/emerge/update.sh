function ems {
        emerge --sync
}

function sync {
        ems && layman -S
}

function syncup {
        sync && emerge -uDU --with-bdeps=y @world
}

function emup {
        emerge -uDU --with-bdeps=y @world
}

