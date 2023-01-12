#!/usr/bin/env bash

bash <(curl -s https://raw.githubusercontent.com/tiago82/gcp-scripts/main/3.sh)

cd $HOME/los




git clone https://github.com/tiago82/android_device_samsung_j7elte device/samsung/j7elte
git clone https://github.com/tiago82/android_device_samsung_universal7580-common device/samsung/universal7580-common

rm -rf hardware/samsung
git clone https://github.com/LineageOS/android_hardware_samsung hardware/samsung
git clone https://github.com/LineageOS/android_hardware_samsung_nfc hardware/samsung/nfc
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_openmax hardware/samsung_slsi/openmax
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_exynos hardware/samsung_slsi/exynos
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_exynos5 hardware/samsung_slsi/exynos5
#git clone https://github.com/LineageOS/android_hardware_samsung_slsi_exynos7580 hardware/samsung_slsi/exynos7580
git clone https://github.com/html6405/android_hardware_samsung_slsi_exynos7580 -b lineage-20.0 hardware/samsung_slsi/exynos7580

#git clone https://github.com/LineageOS/android_kernel_samsung_universal7580 kernel/samsung/universal7580
git clone https://github.com/html6405/android_kernel_samsung_universal7580 -b lineage-20.0 kernel/samsung/universal7580

git clone https://github.com/TheMuppets/proprietary_vendor_samsung/ -b lineage-18.1  vendor/samsung/


source build/envsetup.sh
chroot
breakfast j7elte
brunch j7elte
