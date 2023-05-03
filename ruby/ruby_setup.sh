#! /bin/sh

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash

echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc

# close terminal

sudo apt-get install autoconf bison patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev

rbenv install 3.2.2 # or whatever version is newest and stable
rbenv global 3.2.2 #same version as above
