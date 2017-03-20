function ved {
	vim *.ebuild
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
