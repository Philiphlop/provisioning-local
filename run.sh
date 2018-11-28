dnf install python ansible bit -y

cd ~
mkdir -p /tmp/ansible-setup
cd /tmp/ansible-setup
git clone https://github.com/JBKahn/provisioning-local.git
cd provisioning-local

echo -e "please make sure to edit the config.json file followed by [ENTER]" && read USELESS_VAR

ansible-playbook setup.yml -i HOSTS --ask-sudo-pass  --module-path ./ansible_modules --extra-vars "@config.json"

# dropbox start -i > /dev/null 2>&1 &
# plank > /dev/null 2>&1 &
# steam > /dev/null 2>&1 &
# emacs > /dev/null 2>&1 &

source ~/.bashrc
exit 0
