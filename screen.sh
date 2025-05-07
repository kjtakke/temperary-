xrandr --newmode "5120x1440_30.00" 497.25  5120 5368 5904 6688  1440 1443 1453 1481 -hsync +vsync
xrandr --addmode Virtual1 "5120x1440_30.00"
xrandr --output Virtual1 --mode 5120x1440_30.00

XAI_DIR="/home/kristophertakken/xai"
VENV_ACTIVATE="$XAI_DIR/.xai/bin/activate"
LOGFILE="$XAI_DIR/xai.log"

source ~/.profile
source ~/.bashrc
start_ai


sleep 2  # give it a moment to start
if pgrep -af xai.py > /dev/null; then
    echo "xai.py is running ✅"
else
    echo "xai.py failed to start ❌ - check ~/xai/xai.log"
fi


echo "Kjtakke01" | bash /home/kristophertakken/readyfleet.sh -restart_services
sudo kill -9 $(lsof -t -i :5000)
echo "Kjtakke01" | sudo tedge reconnect c8y

Au




# connect US --down
# connect Au --up
# sudo wg-quick up viper
