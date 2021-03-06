#!/bin/sh

mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev

echo 'sudo chroot /mnt/gentoo /bin/bash && source /etc/profile && export PS1="(chroot) ${PS1}"'

echo "Run above to chroot"
