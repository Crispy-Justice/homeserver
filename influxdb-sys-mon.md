```
#Install influxdb from docker compose.

#Telegraf install

wget -qO- https://repos.influxdata.com/influxdb.key | sudo tee /etc/apt/trusted.gpg.d/influxdb.asc >/dev/null
source /etc/os-release
echo "deb https://repos.influxdata.com/${ID} ${VERSION_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt-get update && sudo apt-get install telegraf



#Edit telegraf.conf

sudo rm -rf /etc/telegraf/telegraf.conf

#Paste the file generated from influxdb

sudo nano /etc/telegraf/telegraf.conf



#Add influxdb api token

## Token for authentication.
  token = "xxxxxxxxxxxxxxxxxxxxx"




#Add to file

[[inputs.file]] 
  files = ["/sys/class/thermal/thermal_zone0/temp"]
  name_override = "cpu_temperature"
  data_format = "value"
  data_type = "integer"
  

```
