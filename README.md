# android_device_nubia_NX629J
For building TWRP for Nubia Red Magic 3

TWRP device tree for Nubia Red Magic 3

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Correct screenshot color
- MTP
- Flashing (opengapps, roms, images and so on)
- Backup/Restore (Needs more testing)
- USB OTG
- Android Q Support

TO-DO:

- Vibration support

## Compile

First checkout minimal twrp with omnirom tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
```

Then add these projects to .repo/manifest.xml:

```xml
<project path="device/nubia/NX629J" name="mauronofrio/android_device_nubia_NX629J" remote="github" revision="android-9.0" />
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_NX629J-eng
mka recoveryimage ALLOW_MISSING_DEPENDENCIES=true # Only if you use minimal twrp tree.
```

To test it:

```
fastboot boot out/target/product/NX629J/recovery.img
```

## Other Sources

https://github.com/mauronofrio/nubia_Kernel_OpenSource

## Thanks

- Thanks to @PeterCxy for the commits and the base: https://github.com/PeterCxy/android_device_nubia_violet-twrp
- Thanks to MattoftheDead @mrslezak for the kernel source
