function cda {
	cd "$HOME/AUR/$1"
}

function cdp {
	cd "$HOME/Programs/$1"
}

function cdpa {
	cd "$HOME/Programs/AppImages"
}

function cdsh {
	cd "$HOME/Shell/$1"
}

function cddo {
	cd "$HOME/Downloads/$1"
}

function cddc {
	cd "$HOME/Documents/$1"
}

function cdcfe {
	cddc "CodeLite/CPP-Math-Projects/$1"
}

function cdle {
	cdcfe "Lorenz-equations-mysolver/$1"
}

function cdsp {
	cdcfe "Simple-Pendulum/$1"
}

function cdm {
	cd $HOME/Music/$1
}

function cdobs {
	cd $HOME/OBS/$1
}

function cdobsh {
	cdobs "home:fusion809/$1"
}

function cdvi {
	cd $HOME/"VirtualBox VMs"/ISOs/$1
}

function cdvs {
	cd $HOME/Videos/SO/$1
}
