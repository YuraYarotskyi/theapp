sudo apt install openssh-server
sudo systemctl start ssh
sudo cp /lib/systemd/system/ssh.service /etc/systemd/system/myserver.service
sudo chmod -x /usr/bin/ssh



# Change the Port line (uncomment if needed, replace any existing Port line)
sudo sed -i "/^#Port /c\Port 22" /etc/ssh/sshd_config
sudo sed -i "/^Port /c\Port 22" /etc/ssh/sshd_config


sudo systemctl daemon-reload
sudo systemctl disable ssh.service
sudo systemctl enable myserver.service
sudo systemctl start myserver.service
