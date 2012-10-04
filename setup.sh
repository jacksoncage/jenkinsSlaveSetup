sudo mv jenkins-slave /etc/default/
sudo mv jenkins-slave.init /etc/init.d/jenkins-slave
ls -la /etc/init.d/jenkins-slave 
chmod 770 /etc/init.d/jenkins-slave 
chown root:root /etc/init.d/jenkins-slave 
sudo chown root:root /etc/init.d/jenkins-slave 
mkdir /opt/jenkins-slave/
cd /opt/jenkins-slave/
curl -O https://test.viaplay.tv/computer/debian_slave_node_1/slave-agent.jnlp