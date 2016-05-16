## RUN THIS AS ROOT

cd /tmp/

### use apt is the best way
# ## ATOM EDITOR
# curl -L https://atom.io/download/deb > atom.deb
# dpkg -i atom.deb


## NODEJS (with n to avoid versioning issue)
curl -sL https://deb.nodesource.com/setup_0.10 | bash -
apt-get install -y nodejs
npm install -g n
sudo npm install -g bower
sudo npm install -g gulp

## CHROME
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb


## HEROKU
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
