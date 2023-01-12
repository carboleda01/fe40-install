# mount shared folder
username="car"
programName=shared
mkdir ~/$programName
sudo sh -c 'echo shared	/home/$username/$programName	vboxsf	defaults	0	0 >> /etc/fstab'
sudo sh -c 'echo vboxsf >> /etc/modules'
sudo mount -t vboxsf $programName ~/$programName

sudo shutdown now
