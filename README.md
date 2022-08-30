# thunderbird-patches
Betterbird is a fork of Mozilla Thunderbird. Here are the patches that provide all the goodness. Visit [www.betterbird.eu](https://www.betterbird.eu/) for details.

## Building Betterbird
These instruction assume that you know how to build Thunderbird. The following instructions are specific to Betterbird.
`NN` stands for the version you want to build. Currently `91` and `102` are supported.

The build process is automated for Windows, Linux and Mac via a [build script](./build/build.sh).
The development environment needs to be set up depending on the platform.

Linux x86-64 users follow the following instructions. Linux/aarch64 users please read [here](./build/build-env-aarch64.MD).
To build successfully on Linux, you need at least 16 GB of memory or swap space.
We executed the steps successfully on a Ubuntu 20.04 cloud server (Hetzner CPX41, 8 CPUs, 16 GB RAM, 240 GB disk).
Building for aarch64 (aka arm64) is also supported. You need to run the build on a aarch64 machine (which you can hire at Amazon EC2).
Sadly `./mach bootstrap` doesn't work on Linux/aarch64, the build script will tell you what to do.
This follows the first part of the [Firefox build instructions](https://firefox-source-docs.mozilla.org/setup/linux_build.html).
1. Prepare to install necessary dependencies: `sudo apt update`
1. Install some packages: `sudo apt-get install git python3 python3-dev python3-pip`
1. Install Mercurial: `sudo apt-get install mercurial` if the Mercurial in your distribution is new enough (as it should be for Ubuntu 20.04). Otherwise use the following two steps.
1. Install Mercurial: `echo "export PATH=\"$(python3 -m site --user-base)/bin:$PATH\"" >> ~/.bashrc` and `python3 -m pip install --user mercurial`
1. In a new shell: `hg version`
1. Install Rust: `curl https://sh.rustup.rs -sSf | sh` and select option 1
1. `$HOME/.cargo/bin/rustup override set 1.XX.0`, see `NN/NN.sh` for the required version
1. Prepare a directory for all the action, let's say: `mkdir build && cd build`
1. Copy the goodness from this repository: `git clone https://github.com/Betterbird/thunderbird-patches.git`
1. Copy the build script to your build directory: `cp thunderbird-patches/build/build.sh .`
1. Issue this command: `./build.sh NN`

Voilà. :heavy_check_mark: For subsequent builds you only need to repeat the last step `./build.sh NN`.

Please note that the [Ansible-betterbird](https://github.com/4ch1m/ansible-betterbird) build has been replaced and is no longer supported.

Mac users follow these instructions:
You need to have at least macOS 12 (Monterey) and you need to install Xcode from the Apple App Store (which requires an Apple ID).
Then follow the first part of the [Firefox build instructions](https://firefox-source-docs.mozilla.org/setup/macos_build.html), the Thunderbird documentation is incomplete.
1. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
1. Xcode modifications: `sudo xcode-select --switch /Applications/Xcode.app` and `sudo xcodebuild -license`
1. Install Mercurial: `echo "export PATH=\"$(python3 -m site --user-base)/bin:$PATH\"" >> ~/.zshenv` and `python3 -m pip install --user mercurial`
1. In a new shell: `hg version`
1. Install Rust: `brew install rustup`
1. In a new shell: `rustup-init` and `rustup override set 1.XX.0`, see `NN/NN.sh` for the required version
1. Install wget: `brew install wget`
1. Prepare a directory for all the action, let's say: `mkdir build && cd build`
1. Copy the goodness from this repository: `git clone https://github.com/Betterbird/thunderbird-patches.git`
1. Copy the build script to your build directory: `cp thunderbird-patches/build/build.sh .`
1. Issue this command: `./build.sh NN`

Voilà. :heavy_check_mark: For subsequent builds you only need to repeat the last step `./build.sh NN`.

Windows user should follow the "System Preparation" from the [Firefox build instructions](https://firefox-source-docs.mozilla.org/setup/windows_build.html)
(also reflected [here](https://developer.thunderbird.net/thunderbird-development/building-thunderbird/windows-build-prerequisites)).
In a shell stated with `start-shell.bat` then execute:
1. Prepare a directory for all the action, let's say: `mkdir build && cd build`
1. Copy the goodness from this repository: `git clone https://github.com/Betterbird/thunderbird-patches.git`
1. Copy the build script to your build directory: `cp thunderbird-patches/build/build.sh .`
1. Issue this command: `./build.sh NN`

Voilà. :heavy_check_mark: For subsequent builds you only need to repeat the last step `./build.sh NN`.

`build.sh` automates the following:

1. Pull `mozilla-esrNN` and `comm-esrNN`.
(The `comm-esrNN` repo goes into the `mozilla-esrNN/comm/` subdirectory.)
1. Update to the versions noted in `NN/NN.sh`: `hg up -r <rev>`. The patches apply to exactly those revisions.
1. Put `NN/series-M-C` into `mozilla-esrNN/.hg/patches`; rename `series-M-C` to `series`.
1. Put `NN/series` into `mozilla-esrNN/comm/.hg/patches`.
1. Put all patches from `NN/branding`, `NN/bugs`, `NN/features`, `NN/misc` into `mozilla-esrNN/comm/.hg/patches`,
then move the ones ending in `*-m-c.patch` into `mozilla-esrNN/.hg/patches`.
1. Fetch "quick-track" patches (see below).
1. Apply the patches using `hg qpush -a`. This would fail if step 3 or 7 were omitted.
1. Copy `mozconfig` into the `mozilla-esrNN` directory.
1. Build normally using `./mach build`.
1. Build an installer using `./mach package`.

Voilà. :heavy_check_mark:

Note that our builds sometimes include patches taken from [bugzilla.mozilla.org](https://bugzilla.mozilla.org/) when we quick-track fixes.
We don't store those patches here. Those patches will have a comment in the series file pointing to the original changeset. `build.sh`
(w)gets these patches. Note that `hg qimport` can't be used since it adds the patch to the series file where it is already present.

Linux users please note that `08-branding-m-c.patch` patches a Windows installer script making use of Windows PowerShell.
However, that part of the build system should not be triggered for Linux builds.
Windows users please note that packaging will fail without an appropriate code signing certificate installed.

## Bug Reporting / Support

Read [www.betterbird.eu/support/](https://www.betterbird.eu//support/). Here is an abridged version:

1. Thunderbird has 14.000+ bugs which won't be fixed as part of Betterbird.
1. First step: Check whether the bug exists in Thunderbird. If so, check whether it has been reported at [Bugzilla](https://bugzilla.mozilla.org/). If reported, please let us know the bug number. If not reported, either you or our project will need to report it (see following item).
1. If the bug is also in Thunderbird, let us know that it's important to you, please provide reasons why Betterbird should fix it and not upstream Thunderbird. We'll check whether we deem it "must have" enough to fix it considering the necessary effort.
1. If the bug is only in Betterbird, let us know, we'll endeavour to fix it asap, usually within days.
1. Common sense bug reporting rules apply: Bug needs to be reproducible, user needs to cooperate in debugging.

## Translations

Translation strings are found [here](./102/scripts).
