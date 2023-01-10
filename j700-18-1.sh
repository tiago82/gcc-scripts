#!/usr/bin/env bash

bash <(curl -s https://raw.githubusercontent.com/tiago82/gcp-scripts/main/2.sh)

cd $HOME/los

git clone https://github.com/TheMuppets/proprietary_vendor_samsung/ -b lineage-18.1  vendor/samsung/

source build/envsetup.sh
breakfast j7elte
croot
brunch j7elte

sudo poweroff
