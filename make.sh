iasl -sa dsdt.dsl
mkdir -p kernel/firmware/acpi
cp dsdt.aml kernel/firmware/acpi
find kernel | cpio -H newc --create > /boot/instrumented_initrd
cat /boot/initrd.img-4.15.18.bak >>/boot/instrumented_initrd
mv /boot/instrumented_initrd /boot/initrd.img-4.15.18
