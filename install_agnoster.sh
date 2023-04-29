#!/bin/zsh

tools/install.sh

if [[ "$(uname)" == "Darwin" ]]; then
  echo "This machine is running macOS."
  git clone https://github.com/powerline/fonts.git --depth=1
  chsh -s /bin/zsh
  cd fonts
  ./install.sh
  # clean-up a bit
  cd ..
  rm -rf fonts
  echo "Now open a terminal -> Preferences -> Profiles"
  echo "-> Select Solarized%2520Dark and choose as default"
  echo "-> Select Text Tab, Change Font to Meslo LG S DZ Regular for Powerline"
elif [[ "$(uname)" == "Linux" ]] && [[ -e /etc/debian_version ]]; then
  sudo apt-get install fonts-powerline
else
  echo "Unknown operating system."
fi
