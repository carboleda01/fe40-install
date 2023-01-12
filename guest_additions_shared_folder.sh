sudo apt update
sudo apt install -y build-essential linux-headers-$(uname -r) vim

sudo mkdir -p /mnt/cdrom

sudo mount /dev/cdrom /mnt/cdrom

cd /mnt/cdrom
sudo ./VBoxLinuxAdditions.run

# mount shared folder
username=carlos
programName=shared
mkdir ~/$programName
sudo sh -c 'echo shared	/home/$username/$programName	vboxsf	defaults	0	0 >> /etc/fstab'
sudo sh -c 'echo vboxsf >> /etc/modules'
sudo mount -t vboxsf $programName ~/$programName

sudo reboot
