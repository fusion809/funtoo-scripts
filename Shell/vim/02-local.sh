function ved {
	VERSION=(ls -lh | cut -d ' ' -f 9 | grep -v "9999" | cut -d '-' -f 2 | sed 's/\.ebuild//g' | grep "[0-9]" | sort -u | tail -n 1)
	
	if `echo $VERSION > /dev/null 2>&1`; then
		VERSION=$(ls -lh | cut -d ' ' -f 9 | grep -v "9999" | cut -d '-' -f 3 | sed 's/\.ebuild//g' | grep "[0-9]" | sort -u | tail -n 1)
		vim *$VERSION.ebuild
	else
		vim *$VERSION.ebuild
	fi
}

function vls {
	vim *.sh
}

function vmk {
	vim Makefile
}

function vpk {
	vim PKGBUILD
}

function vrm {
    if ls README* 1> /dev/null 2>&1; then
        vim README*
    else
        vim README.md
    fi
}

function vsp {
	vim *.spec
}
