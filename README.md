# thunderbird-patches
Betterbird is a fork of Mozilla Thunderbird. Here are the patches that provide all the goodness.

# Building Betterbird

These instruction assume that you know how to build Thunderbird. The following instructions are specific to Betterbird.

Pull mozilla-esr91 and comm-esr91, the comm-esr91 repo goes into the mozilla-esr91/comm/ subdirectory.
Put 91/series-M-C into mozilla-esr91/.hg/patches, rename series-M-C to series.
Put 91/series into mozilla-esr91/comm/.hg/patches.
Put all patches from 91/branding, 91/bugs, 91/features, 91/misc into mozilla-esr91/comm/.hg/patches,
then move the ones ending in *-m-c.patch into mozilla-esr91/.hg/patches.
Copy .mozconfig into the mozilla-esr91 directory.
Apply the patches using `hg qpush`. Build normally using `mach build`. Build an installer using `mach package`. Voilà.

Note that our builds sometimes include patches taken from https://bugzilla.mozilla.org/ when we quick-track fixes.
We don't store those patches here. You will notice it on the `hg qpush`.

Linux users please note that 08-branding-m-c.patch patches a Windows installer script making use of Windows PowerShell.

Visit www.betterbird.eu for details.
