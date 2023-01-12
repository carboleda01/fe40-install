# Prepare for fe40 install
# Add the bionic repository 
sudo sh -c 'echo deb http://us.archive.ubuntu.com/ubuntu/ bionic universe >> /etc/apt/sources.list'

sudo apt update
sudo apt-get install bison build-essential binutils-dev cmake flex bear zlib1g-dev libncurses5-dev \
libreadline-dev libxt-dev rpm mercurial graphviz gcc-5 g++-5 gnuplot gnuplot-qt gnuplot-data cmake \
qt4-qmake

cd ~
mkdir foam
cd foam
git clone git://git.code.sf.net/p/foam-extend/foam-extend-4.0 foam-extend-4.0

cd ~/foam/foam-extend-4.0

echo export WM_THIRD_PARTY_USE_BISON_27=1  >> etc/prefs.sh
echo "export WM_CC='gcc-5'"  >> etc/prefs.sh
echo "export WM_CXX='g++-5'"  >> etc/prefs.sh

source etc/bashrc

sed -i -e 's=rpmbuild --define=rpmbuild --define "_build_id_links none" --define=' ThirdParty/tools/makeThirdPartyFunctionsForRPM
sed -i -e 's/gcc/\$(WM_CC)/' wmake/rules/linux64Gcc/c
sed -i -e 's/g++/\$(WM_CXX)/' wmake/rules/linux64Gcc/c++

echo "alias fe40=\"source $HOME/foam/foam-extend-4.0/etc/bashrc; PS1='(fe40) ${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '\" " >> $HOME/.bashrc

export QT_BIN_DIR=/usr/bin/
echo "export QT_BIN_DIR=$QT_BIN_DIR" >> etc/prefs.sh


export CUDA_ARCH=sm_30
echo "export CUDA_ARCH=sm_30" >> etc/prefs.sh

./Allwmake.firstInstall
