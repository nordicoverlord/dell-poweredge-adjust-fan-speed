# dell-poweredge-adjust-fan-speed
A repository to manually adjust fan speed on a Dell PowerEdge T410 Xeon server.

Use this on your own risk! Always keep an eye on the temperatures of the cores!

## Requirements
sudo apt-get update
sudo apt-gets install ipmitool lm-sensors
sudo sensors-detect
git clone https://github.com/nordicoverlord/dell-poweredge-adjust-fan-speed.git
sudo chmod +x adjustfanspeed.sh


