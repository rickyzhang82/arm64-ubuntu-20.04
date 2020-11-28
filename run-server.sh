RAM=16G
CPUS=4

qemu-system-aarch64 \
    -M virt \
    -cpu cortex-a57 \
    -smp ${CPUS} \
    -m ${RAM} \
    -device virtio-net-pci,netdev=net0,romfile="" \
    -netdev type=user,id=net0,hostfwd=tcp:127.0.0.1:5555-:22  \
    -device virtio-blk-pci,drive=drv0 \
    -object rng-random,filename=/dev/urandom,id=rng0 \
    -device virtio-rng-pci,rng=rng0 \
    -drive format=qcow2,file=hda.qcow2,if=none,id=drv0 \
    -drive if=pflash,format=raw,file=flash0.img,readonly \
    -drive if=pflash,format=raw,file=flash1.img \
    -device virtio-gpu-pci 
