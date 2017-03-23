function emcup {
	sudo emerge -uDU --with-bdeps=y --binpkg-changed-deps=n @world
}

function emup {
	sudo emerge --verbose-conflicts -uDU --with-bdeps=y @world
}

function emaup {
	sudo emerge --verbose-conflicts -auvDU --with-bdeps=y @world
}

function sync {
  sudo emerge --sync

  if [[ -f /usr/bin/layman ]]; then
    sudo layman -S
  fi
}

function syncup {
	sync && emup
}
