#ZSH
echo "installing zsh"
sudo apt-get install -y zsh

#Git
echo "installing git"
sudo apt-get install -y git-core

#Oh My Zsh
echo "installing oh-my-zsh"
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
# sudo chsh
