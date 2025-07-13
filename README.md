# thunderbird-patches
Betterbird is a fork of Mozilla Thunderbird. Here are the patches that provide all the goodness. Visit [www.betterbird.eu](https://www.betterbird.eu/) for details.

## Building Betterbird
These instruction assume that you know how to build Thunderbird. The following instructions are specific to Betterbird.
`NN` stands for the version you want to build. Currently `128` and `140` are supported.

The build process is automated for Windows, Linux and Mac via a [build script](./build/build.sh).
The development environment needs to be set up depending on the platform.

Linux x86-64 users follow the following instructions.
To build successfully on Linux, you need at least 16 GB of memory or swap space.
We executed the steps successfully on a Ubuntu 20.04 cloud server (Hetzner CPX41, 8 CPUs, 16 GB RAM, 240 GB disk)
and also using Ubuntu 24.04 on a VM (8 CPUs, 20 GB RAM, 90 GB disk).
Building for aarch64 (aka arm64) is also supported. You need to run the build on a aarch64 machine (which you can hire at Amazon EC2).
Sadly `./mach bootstrap` doesn't work on Linux/aarch64, so please read [here](./build/build-env-aarch64.MD).
This follows the first part of the [Firefox build instructions](https://firefox-source-docs.mozilla.org/setup/linux_build.html) copied below:
1. Prepare to install necessary dependencies: `sudo apt update`
1. Install some packages: `sudo apt-get install git python3 python3-dev python3-pip curl`
1. More packages: `sudo apt-get install libdbusmenu-gtk3-dev`
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
You need to install Xcode from the Apple App Store or [developer.apple.com/download/](https://developer.apple.com/download/)
(which requires an Apple ID). Note the dependency of Xcode version and macOS version (details [here](https://xcodereleases.com/)).

We are using this hardware for building:
1. Betterbird 128 on Mac Intel: macOS 12.6.6 (Monterey) with Xcode 13.4.1 and SDK 14.4
1. Betterbird 128 on Mac Silicon: macOS 15.2/15.5 (Sequoia) with Xcode 16.2 and SDK 14.4/15.2
1. Betterbird 140 on Mac Intel: macOS 15.5 (Sequoia) with Xcode 16.4 and SDK 15.5
1. Betterbird 140 on Mac Silicon: TBA.

Then follow the first part of the (previous) [Firefox build instructions](https://firefox-source-docs.mozilla.org/setup/macos_build.html) copied below,
the [Thunderbird documentation](https://developer.thunderbird.net/thunderbird-development/building-thunderbird/macos-build-prerequisites)
is incomplete:
1. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`.
Note that latest Homebrew may install cargo and rust into `/usr/local/bin`.
This needs to be removed (remove links) in order not to clash with `rustup-init` below.
1. Xcode modifications: `sudo xcode-select --switch /Applications/Xcode.app` and `sudo xcodebuild -license`
1. Install Mercurial: `brew install hg`
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

## One-off build

The standard build script `build.sh` initially pulls two Mozilla repositories. This is fine if you want to repeat the
build later. For so-called one-off builds we have a script `build-one-off.sh` which works off the published tarball for
the corresponding Thunderbird release. This downloads a lot less data and is hence faster during the code preparation stage.

## Bug Reporting / Support

**Please do not file support requests or general questions at GitHub.** Contact the Betterbird team via e-mail instead.

Read [www.betterbird.eu/support/](https://www.betterbird.eu//support/). Here is an abridged version:

1. Thunderbird has 14.000+ bugs which won't be fixed as part of Betterbird.
1. First step: Check whether the bug exists in Thunderbird. If so, check whether it has been reported at [Bugzilla](https://bugzilla.mozilla.org/). If reported, please let us know the bug number. If not reported, either you or our project will need to report it (see following item).
1. If the bug is also in Thunderbird, let us know that it's important to you, please provide reasons why Betterbird should fix it and not upstream Thunderbird. We'll check whether we deem it "must have" enough to fix it considering the necessary effort.
1. If the bug is only in Betterbird, let us know, we'll endeavour to fix it asap, usually within days.
1. Common sense bug reporting rules apply: Bug needs to be reproducible, user needs to cooperate in debugging.

Information you need to supply:

1. Operating system and version of operating system. For Linux, distribution and desktop environment as well as graphic interface (X11/Wayland).
2. State your anti-virus program, if any.
3. State your hardware: RAM, disk size, type of fixed disk (SSD, etc.).
4. Version of Betterbird. For Linux, how it was installed: FlatPak, Arch Linux AUR, installed from `.tar.bz2`, maybe via our installation script.
5. State how many accounts you have and of which type and state with which account type the issue happens: IMAP, POP, Feeds, News, Chat. For IMAP, state whether the folder producing the problem is synchronised for offline use or not. For all account types: How many messages? How big is the folder in KB, MB or GB. This is especially important for performance issues.
6. State whether you have configured any online services, like CalDAV calendars or CardDAV address books, potentially via NextCloud.
7. Check whether the problem reproduces with all add-ons switched off: `Help > Troubleshoot Mode`. Reset the startup cache: `Help > Troubleshooting Information, Clear startup cache`.
8. Have you manipulated any preferences, perhaps via `user.js`? Are you using `userChrome.css` or `userContent.css`?
9. For performance issues, submit a (startup) performance profile, see Mozilla's documentation for details. Note that after capturing the profile via `Tools > Developer Tools > Developer Toolbox, Performance`, you need to click `Upload local profile`, but instead of uploading to Mozilla, click `Download`. Then submit the data to our support, for big files, use a file transfer service.
10. Does the issue happen in Thunderbird when run on the same profile? Comparisons with Thunderbird running on a different profile are not meaningful. This question of course doesn't apply to Betterbird-only features.
11. For "can't send" or "can't receive" problems, disable your anti-virus program, either for the Betterbird executable, or its installation directory or both. Generally it's not necessary and not recommended to exclude your profile from the anti-virus protection, unless you're experiencing **sluggishness** which may be related to anti-virus scan delays.
12. Note that profiles on network drives are only partly supported, profiles in Dropbox folders don't work at all.
13. **Be smart!** We leave it to your own judgement which information is relevant for your particular case.

## Translations

Translation strings are found [here](./102/scripts).
