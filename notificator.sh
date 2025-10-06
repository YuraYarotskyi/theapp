sudo apt update
sudo apt install -y libnotify-bin
ls -l /run/user/1000/bus
id -u

#/run/user/1000, "1000" wymienic na id uzytkownika

sudo -u asus XDG_RUNTIME_DIR="/run/user/1000" DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus" DISPLAY=:0 notify-send "Test" "To jest testowe powiadomienie 🎉"
