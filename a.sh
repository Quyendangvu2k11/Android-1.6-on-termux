termux-setup-storage && apt update && apt upgrade -y && pkg install x11-repo -y && pkg install termux-am termux-tools pulseaudio qemu-system-x86_64 qemu-system-aarch64 qemu-utils wget -y && mkdir /storage/emulated/0/disks && cd /storage/emulated/0/disks && wget https://archive.org/download/android-1.6_on_termux/Android%201.6.qcow2 && cd && echo "qemu-system-x86_64 -M q35 -usb -device usb-kbd -cpu coreduo,+sse,+sse2,+sse4.1,+sse4.2 -smp sockets=1,cores=1,threads=1 -m 256M -drive file="/storage/emulated/0/disks/Android 1.6.qcow2",aio=threads,cache=writeback -vga std -device e1000-82544gc,netdev=n0 -netdev user,id=n0 -accel tcg,tb-size=2048 -rtc base=2012-01-06t19:50:00 -device intel-iommu -vnc :2" >> $PREFIX/bin/android16 && chmod +x $PREFIX/bin/android16 && 

echo ==================================
echo Install complete type android16 press Enter to run
echo ==================================