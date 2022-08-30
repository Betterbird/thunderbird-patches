Most recent build instructions for building aarch64 on an aarch64 Debian 11 "Bullseye" instance are as follows.
Used on an aarch64 Amazon EC2 instance with Debian 11 (20220816-1109):

`sudo apt update`<br>
`sudo dpkg-reconfigure locales`<br>
Choose: en_US.UTF-8 UTF-8<br>
Then: en_US.UTF-8<br>
`sudo dpkg-reconfigure tzdata`<br>
Set to Berlin<br>
`sudo apt upgrade`

INSTALL APT PACKAGES:
```
sudo apt install mlocate git mercurial nano micro watchman python3-pywatchman python3 \
  python3-pip python3-setuptools python3-wheel default-jre default-jdk wget curl gcc g++ \
  binutils build-essential cmake ninja-build fonts-powerline powerline nasm shc \
  libc6 libc6-dev libgcc-10-dev libstdc++-10-dev libstdc++6 linux-libc-dev libstdc++6 libstdc++-10-dev \
  libx11-dev libxext-dev libxt-dev libxcb1-dev libxcb-shm0-dev libx11-xcb-dev \
  libbsd-dev libgtk-3-dev libdbus-glib-1-dev
```

SETUP GITHUB:
```
git config --global user.name "XXXXXX"
git config --global user.email "XXXXXXXXXXX"
git config --global pull.rebase false
```

SETUP HG:<br>
`hg config --edit`<br>
So it reads:
```
[ui]
username = XXXXXXXXX <email_address>

[extensions]
mq =

[fsmonitor]
mode = on
```

INSTALL LLVM 14.0.6 USING LLVM APT REPO
`wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -`
Add to /etc/apt/sources.list
`deb http://apt.llvm.org/bullseye/ llvm-toolchain-bullseye-14 main`
`sudo apt update`

INSTALL LLVM-14 PACKAGES:
`sudo apt install \`
`clang-14-doc=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \` \`
`clang-14-examples=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`clang-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`clang-format-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`clang-tidy-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`clang-tools-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`clangd-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libc++-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libc++1-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libc++abi-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libc++abi1-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libclang-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libclang-common-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libclang-cpp14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libclang-cpp14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libclang1-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libclc-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libclc-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libfuzzer-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`liblld-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`liblld-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`liblldb-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`liblldb-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libllvm-14-ocaml-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libllvm14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libmlir-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libmlir-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libomp-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libomp-14-doc=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libomp5-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libunwind-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`libunwind-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`lld-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`lldb-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`llvm-14-dev=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`llvm-14-doc=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`llvm-14-examples=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`llvm-14-linker-tools=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`llvm-14-runtime=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`llvm-14-tools=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`llvm-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`mlir-14-tools=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`python3-clang-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 \`
`python3-lldb-14=1:14.0.6~++20220622053050+f28c006a5895-1~exp1~20220622173135.152 `

ADD TO .bashrc:<br>
`export PATH="/usr/lib/llvm-14/bin:$PATH"`

INSTALL RUSTUP, RUSTC, CARGO:
```
wget https://sh.rustup.rs
mv index.html rustup-init.sh
chmod +x rustup-init.sh
./rustup-init.sh -y --default-toolchain 1.60.0-aarch64-unknown-linux-gnu --default-host aarch64-unknown-linux-gnu --component rustfmt
. ~/.bashrc

```
INSTALL CBINDGEN AND BINDGEN:
```
cargo install cbindgen --version 0.23.0
cargo install bindgen
```

INSTALL NVM INSTALL SCRIPT:
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
. ~/.bashrc

```
INSTALL NODE:<br>
Current version is 16.17.0
```
nvm install 16.17.0
nvm use 16.17.0
nvm alias default 16.17.0
```

INSTALL NPM:<br>
`npm install --location=global npm@latest`

CLONE THE THUNDERBIRD-PATCHES GITHUB REPO:
```
cd ~
mkdir build-102
cd ~/build-102
git clone --recursive https://github.com/Betterbird/thunderbird-patches.git
cp -p thunderbird-patches/build/build.sh .
```
BUILD Betterbird-102:<br>
`./build.sh 102`
