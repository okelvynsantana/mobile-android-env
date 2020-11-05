echo "Setup development env"
echo "Install Git"
sudo apt install git -y

echo "What name do you want to use in GIT user.name?"
echo "For example, mine will be \"kelvynsantana\""
read git_config_user_name
git config --global user.name "$git_config_user_name"
clear 

echo "What email do you want to use in GIT user.email?"
echo "For example, mine will be \"kelvyn.santana.ext@talentfour.com.br\""
read git_config_user_email
git config --global user.email $git_config_user_email
clear

echo "Installing snapd"
sudo apt install snapd -y

echo 'installing chrome' 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo 'Installing Discord'
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i discord.deb
sudo apt-get install -f -y && rm discord.deb

echo 'Installing Sublime Text'
sudo snap install sublime-text --classic -y

echo "Installing Android Studio"
sudo snap install android-studio --classic -y

echo "Generating a SSH Key"
ssh-keygen -t rsa -b 4096 -C $git_config_user_email
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | xclip -selection clipboard
