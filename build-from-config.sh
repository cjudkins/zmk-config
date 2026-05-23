# docker exec -it <containerid> /workspaces/zmk-config/build-from-config.sh

cd /workspaces/zmk/app

west build -p -d build/cradio/left -b nice_nano_v2 -- -DSHIELD=cradio_left -DZMK_CONFIG="/Users/cjudkins/git/zmk/zmk-config/config" -DZMK_EXTRA_MODULES="/Users/cjudkins/git/zmk/zmk-modules/zmk-tri-state" -DCONFIG_ZMK_HID_CONSUMER_REPORT_USAGES_FULL=y
west build -p -d build/cradio/right -b nice_nano_v2 -- -DSHIELD=cradio_right -DZMK_CONFIG="/Users/cjudkins/git/zmk/zmk-config/config" -DZMK_EXTRA_MODULES="/Users/cjudkins/git/zmk/zmk-modules/zmk-tri-state"
west build -p -d build/logos/left -b seeeduino_xiao_ble -- -DSHIELD=logos_left -DZMK_CONFIG="/Users/cjudkins/git/zmk/zmk-config/config" -DZMK_EXTRA_MODULES="/workspaces/zmk-config/;/workspaces/zmk-modules/zmk-tri-state;/workspaces/zmk-modules/zmk-pmw3610-driver;/workspaces/zmk-modules/zmk-rgbled-widget"
west build -p -d build/logos/right -b seeeduino_xiao_ble -- -DSHIELD=logos_left -DZMK_CONFIG="/Users/cjudkins/git/zmk/zmk-config/config" -DZMK_EXTRA_MODULES="/workspaces/zmk-config/;/workspaces/zmk-modules/zmk-tri-state;/workspaces/zmk-modules/zmk-pmw3610-driver;/workspaces/zmk-modules/zmk-rgbled-widget"
west build -p -d build/corne/left -b nice_nano_v2 -- -DSHIELD=corne_left -DZMK_CONFIG="/Users/cjudkins/git/zmk/zmk-config/config" -DZMK_EXTRA_MODULES="/Users/cjudkins/git/zmk/zmk-modules/zmk-tri-state" -DCONFIG_ZMK_HID_CONSUMER_REPORT_USAGES_FULL=y
west build -p -d build/corne/right -b nice_nano_v2 -- -DSHIELD=corne_right -DZMK_CONFIG="/Users/cjudkins/git/zmk/zmk-config/config" -DZMK_EXTRA_MODULES="/workspaces/zmk-modules/zmk-tri-state"h

mkdir -p /workspaces/zmk-config/build
cp "./build/cradio/left/zephyr/zmk.uf2" "/workspaces/zmk-config/build/cradio-left.uf2"
cp "./build/cradio/right/zephyr/zmk.uf2" "/workspaces/zmk-config/build/cradio-right.uf2"
cp "./build/logos/left/zephyr/zmk.uf2" "/workspaces/zmk-config/build/logos-left.uf2"
cp "./build/logos/right/zephyr/zmk.uf2" "/workspaces/zmk-config/build/logos-right.uf2"
#cp "./build/corne/left/zephyr/zmk.uf2" "/workspaces/zmk-config/build/corne-left.uf2"
#cp "./build/corne/right/zephyr/zmk.uf2" "/workspaces/zmk-config/build/corne-right.uf2"
