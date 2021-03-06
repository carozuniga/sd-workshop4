yum install -y wget unzip
wget https://releases.hashicorp.com/consul/1.0.0/consul_1.0.0_linux_amd64.zip -P /tmp
unzip /tmp/consul_1.0.0_linux_amd64.zip -d /tmp
mv /tmp/consul /usr/bin
mkdir /etc/consul.d
mkdir -p /etc/consul/data
adduser consul
passwd consul
chown -R consul:consul /etc/consul
chown -R consul:consul /etc/consul.d