sudo apt update
sudo apt install -y build-essential linux-headers-$(uname -r) vim

sudo mkdir -p /mnt/cdrom

sudo mount /dev/cdrom /mnt/cdrom

cd /mnt/cdrom
sudo ./VBoxLinuxAdditions.run

sudo shutdown now
