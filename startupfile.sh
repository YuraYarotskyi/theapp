sudo apt install openssh-server
sudo systemctl start ssh
sudo cp /lib/systemd/system/ssh.service /etc/systemd/system/myserver.service

sudo systemctl daemon-reload
sudo systemctl disable ssh.service
sudo systemctl enable myserver.service
sudo systemctl start myserver.service
