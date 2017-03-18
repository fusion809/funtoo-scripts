## Update local gentoo-scripts and gentoo-config repos
function cps {
    # scripts
    sudo chmod +x -R {$HOME,/root}/Shell/
    rm -rf $FS/Shell && mkdir $FS/Shell
    sudo rm -rf $FS/root/Shell
    cp -a $HOME/Shell/* $FS/Shell
    cp -a $HOME/{.bashrc,.zshrc} $FS/
    sudo cp -a /root/{Shell,.bashrc,.zshrc} $FS/

    # config
    if ! [[ -d $GC/etc/portage ]]; then
        mkdir -p $GC/etc/portage
    fi
    sudo cp -a /etc/portage/* $GC/etc/portage
    if ! [[ -d $GC/etc/kernels ]]; then
        mkdir -p $GC/etc/kernels
    fi
    sudo cp -a /etc/kernels/* $GC/etc/kernels
}

function cdgc {
    cd $GC
}

function cdfs {
    cd $FS
}

## Update gentoo-scripts GitHub repo
function shup {
  cps && cdfs && push "$1" && cd - && szsh && cdgc && push "$1" && cd -
}
