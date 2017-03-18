function kern-build {

    printf "Note: your presently selected kernel is $KERN, if you would rather compile a different kernel stop this script with Ctrl-C and use eselect to select the kernel you want to build.\n"

    cd /usr/src/linux

    printf "Compiling the presently eselected kernel with 8 cores.\n"
    make -j9

    printf "Compiling the included kernel modules.\n"
    make modules_install

    printf "Installing vmlinuz to /boot.\n"
    make install

    printf "Rebuilding external kernel modules with emerge @module-rebuild.\n"
    emmr

    printf "Building initramfs by using dracut; using better-initramfs creates an initramfs that causes the root disk to have trouble being mounted.\n"
    dracut -f --fstab --xz /boot/initramfs-$KERN.img $KERN

    if ! `grep -qs "/boot/efi" /proc/mounts`; then

        printf "Mounting /dev/sda1 on /boot/efi.\n"
        mount /dev/sda1 /boot/efi

    fi

    printf "Copying across vmlinuz and initramfs for $KERN to /boot/efi.\n"
    cp /boot/*$KERN* /boot/efi

}
