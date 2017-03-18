## Update local funtoo-scripts and funtoo-config repos
function cps {
    # scripts
    sudo chmod +x -R {$HOME,/root}/Shell/
    sudo rm -rf $FS/Shell && mkdir $FS/Shell
    sudo rm -rf $FS/root/Shell
    cp -a $HOME/Shell/* $FS/Shell
    cp -a $HOME/{.bashrc,.zshrc} $FS/
    sudo cp -a /root/{Shell,.bashrc,.zshrc} $FS/root

    # config
    if ! [[ -d $FC/etc/portage ]]; then
        mkdir -p $FC/etc/portage
    fi
    sudo cp -a /etc/portage/* $FC/etc/portage
    if ! [[ -d $FC/etc/kernels ]]; then
        mkdir -p $FC/etc/kernels
    fi
    sudo cp -a /etc/kernels/* $FC/etc/kernels
}

function cdfc {
    cd $FC
}

function cdfs {
    cd $FS
}

## Update gentoo-scripts GitHub repo
function shup {
  cps && cdfs && push "$1" && cd - && szsh && cdfc && push "$1" && cd -
}
