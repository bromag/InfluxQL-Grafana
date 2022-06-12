How to install Influx2.x.x

wget -qO- https://repos.influxdata.com/influxdb.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/influxdb.gpg > /dev/null

export DISTRIB_ID=$(lsb_release -si); export DISTRIB_CODENAME=$(lsb_release -sc)
echo "deb [signed-by=/etc/apt/trusted.gpg.d/influxdb.gpg] https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list > /dev/null

apt-get update

apt-get install influxdb2

dpkg -L influxdb2

influx version

systemctl start influxdb
systemctl status influxdb

systemctl enable influxdb
influx setup
influx auth list

influx user create --name test --org xxx --password Test@123$
