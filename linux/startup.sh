#! /bin/sh

if [ -n "$(command -v yum)" ]; then
  cmd='yum'
elif [ -n "$(command -v apt-get)" ]; then
  cmd='apt-get'
else
  echo 'Failed to find yum/apt-get !!'
  exit
fi

echo 'Repo Update command = ' $cmd

if [ -z "$(command -v curl)" ]; then
  echo 'Installing curl...'
  sudo $cmd -y install curl
fi

if [ -z "$(command -v vim)" ]; then
  echo 'Installing vim...'
  sudo $cmd -y install vim
fi

if [ -z "$(command -v git)" ]; then
  echo 'Installing git...'
  sudo $cmd -y install git
fi

if [ -z "$(command -v gcc)" ]; then
  echo 'Installing gcc...'
  sudo $cmd -y install gcc
fi

if [ -z "$(command -v make)" ]; then
  echo 'Installing build-essential...'
  sudo $cmd -y install build-essential
fi

#if [ -z "$(command -v javac)" ]; then
#  echo 'Installing openjdk-7-jdk icedtea-7-plugin...'
#  sudo $cmd -y install openjdk-7-jdk icedtea-7-plugin
#fi

if [ -z "$(command -v zsh)" ]; then
  echo 'Installing zsh...'
  sudo $cmd -y install zsh
fi
echo 'Setting zsh as default shell... [Relogin to get zsh]'
sudo chsh -s "$(which zsh)"

## calling startup_term.sh 
curl -L https://raw.github.com/dnath/config/master/Nix/startup_term.sh | sh
