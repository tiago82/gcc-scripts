#!/usr/bin/env bash

git clone https://github.com/LineageOS/android_hardware_samsung hardware/samsung
git clone https://github.com/LineageOS/android_hardware_samsung_nfc hardware/samsung/nfc
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_openmax hardware/samsung_slsi/openmax
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_exynos hardware/samsung_slsi/exynos
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_exynos5 hardware/samsung_slsi/exynos5
git clone https://github.com/LineageOS/android_hardware_samsung_slsi_exynos7580 hardware/samsung_slsi/exynos7580
git clone https://github.com/LineageOS/android_kernel_samsung_universal7580 kernel/samsung/universal7580
git clone https://github.com/TheMuppets/proprietary_vendor_samsung/ -b lineage-18.1  vendor/samsung/

cd $HOME/los
source build/envsetup.sh
breakfast j7elte
