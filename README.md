# thunderbird-patches
Betterbird is a fork of Mozilla Thunderbird. Here are the patches that provide all the goodness. Visit [www.betterbird.eu](https://www.betterbird.eu/) for details.

## Building Betterbird
These instruction assume that you know how to build Thunderbird. The following instructions are specific to Betterbird.

1. Pull `mozilla-esr91` and `comm-esr91`.  
(The `comm-esr91` repo goes into the `mozilla-esr91/comm/` subdirectory.)
1. Update to the versions noted in `releases.yml`: `hg up -r <rev>`. The patches apply to exactly those revisions.
1. Put `91/series-M-C` into `mozilla-esr91/.hg/patches`; rename `series-M-C` to `series`.
1. Put `91/series` into `mozilla-esr91/comm/.hg/patches`.
1. Put all patches from `91/branding`, `91/bugs`, `91/features`, `91/misc` into `mozilla-esr91/comm/.hg/patches`,
then move the ones ending in `*-m-c.patch` into `mozilla-esr91/.hg/patches`.
1. Copy `.mozconfig` into the `mozilla-esr91` directory.
1. Apply the patches using `hg qpush -a`. This will fail if you omitted step 2.
1. Build normally using `mach build`.
1. Build an installer using `mach package`.
 
Voilà. :heavy_check_mark:

Note that our builds sometimes include patches taken from [bugzilla.mozilla.org](https://bugzilla.mozilla.org/) when we quick-track fixes.
We don't store those patches here. Those patches will have a comment in the series file pointing to the original changeset.

To import: `hg qimport <changeset URL> -n <patch name>.patch`.  
If you miss them, you will notice it on the `hg qpush`.

Linux users please note that [08-branding-m-c.patch](91/branding/08-branding-m-c.patch) patches a Windows installer script making use of Windows PowerShell.
However, that part of the build system should not be triggered for Linux builds.

Linux users also can use [Ansible-betterbird](https://github.com/4ch1m/ansible-betterbird) for an automated "one click" build, well, "one command" build. To build successfully on Linux, you need at least 16 GB of memory or swap space.

Mac users follow these instructions (WIP!):
You need to have at least macOS 12 (Monterey) and you need to install Xcode from the Apple App Store (which requires an Apple ID).
Then follow the first part of the [Firefox build instructions](https://firefox-source-docs.mozilla.org/setup/macos_build.html), the Thunderbird documentation is incomplete.
1. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
1. Xcode modifications: `sudo xcode-select --switch /Applications/Xcode.app` and `sudo xcodebuild -license`.
1. Install Mercurial: `echo "export PATH=\"$(python3 -m site --user-base)/bin:$PATH\"" >> ~/.zshenv` and `python3 -m pip install --user mercurial`.
1. In a new shell, then: `hg version`.
1. Install Rust: `brew install rustup`.
1. In a new shell: `rustup-init` and `rustup override set 1.53.0`, the latter is needed for Mozilla ESR 91 code.
1. In a new shell install ansible: `python3 -m pip install --upgrade pip` and `python3 -m pip install --user ansible`.
1. `git clone https://github.com/4ch1m/ansible-betterbird`
1. `cd ansible-betterbird`
1. Remove `name: install necessary packages` section from betterbird.yml, those packages are already installed.
1. `./betterbird.sh`
1. The Ansible build fails during the bootstrap stage, but it does pull the repositories and applies the patches.
1. Copy `.mozconfig-Mac` as `.mozconfig` to the source directory and finish the build with `./mach build` and `./mach package`.

## Bug Reporting / Support

Read [www.betterbird.eu/support/](https://www.betterbird.eu//support/). Here is an abridged version:

1. Thunderbird has 14.000+ bugs which won't be fixed as part of Betterbird.
1. First step: Check whether the bug exists in Thunderbird. If so, check whether it has been reported at [Bugzilla](https://bugzilla.mozilla.org/). If reported, please let us know the bug number. If not reported, either you or our project will need to report it (see following item).
1. If the bug is also in Thunderbird, let us know that it's important to you, please provide reasons why Betterbird should fix it and not upstream Thunderbird. We'll check whether we deem it "must have" enough to fix it considering the necessary effort.
1. If the bug is only in Betterbird, let us know, we'll endeavour to fix it asap, usually within days.
1. Common sense bug reporting rules apply: Bug needs to be reproducible, user needs to cooperate in debugging.

## Translations

Translation strings are found [here](./scripts).
