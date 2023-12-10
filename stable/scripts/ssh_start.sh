# remove password authentication method, to force only use certificate authentication
echo "\nPasswordAuthentication no" >> /etc/ssh/sshd_config
mkdir -p ~/.ssh && touch ~/.ssh/authorized_keys && echo $SSH_PUBLIC_KEY >> ~/.ssh/authorized_keys
service ssh start