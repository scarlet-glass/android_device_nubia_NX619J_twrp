# Device Tree for Redmagic Mars(NX619J)

The Redmagic Mars (codenamed _"NX619J"_) is a flagship smartphone from nubia.

```
repo sync
```

If you want to exclude twrp app you need of this commit: https://gerrit.omnirom.org/#/c/android_bootable_recovery/+/27694/

To make wipe system works you need of this commit: https://gerrit.omnirom.org/#/c/android_bootable_recovery/+/32714/

If you want to use the notch theme you need of this commit: https://gerrit.omnirom.org/#/c/android_bootable_recovery/+/32963/

Now you need of this patch to make decryption working: https://gist.github.com/mauronofrio/af29bad34ad87a1a957d193794f0bf5f


To make all works you need to modify the buildinfo.sh in build/tools
echo "ro.build.version.release=$PLATFORM_VERSION"
echo "ro.build.version.security_patch=$PLATFORM_SECURITY_PATCH"
to
echo "ro.build.version.release_orig=$PLATFORM_VERSION"
echo "ro.build.version.security_patch_orig=$PLATFORM_SECURITY_PATCH"

And you need to increase the PLATFORM_VERSION to 16.1.0 in build/core/version_defaults.mk to override Google's anti-rollback features (This actually i don't know if is always needed)

Finally execute these:

```
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
lunch omni_NX619J-eng 
mka adbd recoveryimage 
```
To test it:

```
fastboot boot out/target/product/NX619J/recovery.img
```