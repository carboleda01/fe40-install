# fe40-install
installation of fe40 in Ubuntu 20 and 22
add the bionic repository to the sources to be able to install g++-5 gcc-5
# Add the bionic repository 
sudo sh -c 'echo deb http://us.archive.ubuntu.com/ubuntu/ bionic universe >> /etc/apt/sources.list'

run the dependencies.sh file

once the dependencies are installed
we need to get the source code of foam extend

cd ~

mkdir foam
cd foam
git clone git://git.code.sf.net/p/foam-extend/foam-extend-4.0 foam-extend-4.0

now move to the created folder

cd ~/foam/foam-extend-4.0



