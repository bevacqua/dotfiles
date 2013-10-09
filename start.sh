# ubuntu setup
sudo su
mkdir -p /tmp/bootstrap
cd /tmp/bootstrap
apt-get update

# essentials
apt-get install build-essential libssl-dev curl -y

# git
apt-get install git-core -y
git config --global user.name "Nicolas Bevacqua"
git config --global user.email "nicolasbevacqua@gmail.com"

# chrome install
apt-get install libxss1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

# sublime text 3
add-apt-repository ppa:webupd8team/sublime-text-3 -y
apt-get update
apt-get install sublime-text-installer

# zsh
apt-get install zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s `which zsh`

# reboot!
shutdown -r 0

# nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
echo "\n. ~/.nvm/nvm.sh" >> ~/.zshrc
source ~/.zshrc

## change timezone
# dpkg-reconfigure tzdata
