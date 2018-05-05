sudo raspi-config
sudo shutdown
sudo shutdown -h now
sudo apt-get purge wolfram-engine
sudo apt-get purge libreoffice*
sudo apt-get clean
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
ls
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install build-essential
sudo apt-get install cmake
sudo apt-get update
sudo apt-get install cmake
sudo apt-get install build-essential cmake pkg-config
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo raspi-config
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk2.0-dev libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install python2.7-dev python3-dev
sudo apt-get install libcanberra-gtk*
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install python2.7-dev python3-dev
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.3.0.zip
unzip opencv.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.3.0.zip
ls
rm -rf opencv-3.3.0/
rm opencv.zip 
rm opencv_contrib.zip 
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.4.1.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.4.1.zip
unzip opencv.zip
ls
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo python3 get-pip.py
pip install numpy
ls
cd opencv-3.4.1/
mkdir build 
cd build/
cmake -D CMAKE_BUILD_TYPE=RELEASE     -D CMAKE_INSTALL_PREFIX=/usr/local     -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.3.0/modules     -D ENABLE_NEON=ON     -D ENABLE_VFPV3=ON     -D BUILD_TESTS=OFF     -D INSTALL_PYTHON_EXAMPLES=OFF cmake -D CMAKE_BUILD_TYPE=RELEASE     -D CMAKE_INSTALL_PREFIX=/usr/local     -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.1/modules     -D ENABLE_NEON=ON     -D ENABLE_VFPV3=ON     -D BUILD_TESTS=OFF     -D INSTALL_PYTHON_EXAMPLES=OFF 
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.1/modules -D ENABLE_NEON=ON -D ENABLE_VFPV3=ON -D BUILD_TESTS=OFF -D INSTALL_PYTHON_EXAMPLES=OFF -D BUILD_EXAMPLES=OFF ..
cd ..
ls
rm -rf build/
cd
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip
nano .profile 
source ~/.profile
sudo pip install virtualenv virtualenvwrapper
sudo pip3 install virtualenv virtualenvwrapper
source ~/.profile
python
echo $PATH
mkvirtualenv cv3 -p python3
sudo pip install virtualenvwrapper
sudo pip3 install virtualenvwrapper
pip3 --version
mkvirtualenv cv3 -p python3
ls /usr/bin/pyto*
sudo ls /usr/bin/pyto*
sudo ls /usr/bin/
cd /usr/bin/python
./usr/bin/python
/usr/bin/python
ln -s /usr/local/bin/python3.5 /usr/local/bin/python
sudo ln -s /usr/local/bin/python3.5 /usr/local/bin/python
python -v
python
ls
cd /usr/bin/
ls
python
sudo reboot
python
pip install virtualenwrapper
sudo pip install virtualenwrapper
sudo pip install virtualenvwrapper
sudo pip3 install virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.5
source ~/.profile
mkvirtualenv cv -p python3
pip install numpy
cd opencv-3.4.1/
mkdir build 
cd build/
cmake -D CMAKE_BUILD_TYPE=RELEASE     -D CMAKE_INSTALL_PREFIX=/usr/local     -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.1/modules     -D ENABLE_NEON=ON     -D ENABLE_VFPV3=ON     -D BUILD_TESTS=OFF     -D INSTALL_PYTHON_EXAMPLES=OFF     -D BUILD_EXAMPLES=OFF ..
sudo nano /etc/dphys-swapfile
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
make -j4
sudo make install
sudo ldconfig
nano /etc/dphys-swapfile 
sudo nano /etc/dphys-swapfile 
cd /usr/local/lib/python3.5/site-packages/
sudo mv cv2.cpython-35m-arm-linux-gnueabihf.so cv2.so
cd ~/.virtualenvs/cv/lib/python3.5/site-packages/
ln -s /usr/local/lib/python3.5/site-packages/cv2.so cv2.so
python
sudo apt-get install nodejs
sudo apt-get install npm
cd
mkdir nodeopencv
cd nodeopencv/
npm install opencv
ls
cat npm-debug.log 
sudo npm install opencv
node
npm
node 
nodejs
sudo apt-get install node
node
sudo apt-get uninstall nodejs
sudo apt-get purge nodejs
sudo apt autoremove
python
workon cv2
workon cv
python
ls
cd nodeopencv/
ls
rm -rf node_modules/
ls
npm
node
sudo apt-get purge node
uname -m
cd ..
wget https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-armv7l.tar.xz
ls
tar -xzf node-v8.11.1-linux-armv7l.tar.gz
tar -xzf node-v8.11.1-linux-armv7l.tar.xz
sudo apt-get install xz-utils
tar -xf node-v8.11.1-linux-armv7l.tar.xz 
ls
cd node-v8.11.1-linux-armv7l/
ls
sudo cp -R * /usr/local/
node -v
node
node -v
npm -v
node -v
sudo reboot
htop
workon cv
node
node --version
npm
ls
cd nodeopencv/
npm install opencv
ls
cd node_modules/
ls
cd opencv/
ls
cd examples/
ls
node face-detection.js 
ls
cd ..
ls
cd
sudo apt-get install vsftpd
sudo nano /etc/vsftpd.conf
sudo service vsftpd restart
sudo apt-get remove vsftpd
Sudo apt install proftpd
sudo apt install proftpd
sudo reboot
workon cv
ls
sudo apt install proftpd
sudo apt autoremove
sudo nano /etc/proftpd/proftpd.conf
sudo service proftpd reload
cd 
ls
cd node
cd nodeopencv/
ls
cd node_modules/opencv/examples/
ls
node face-detection.js 
cd ..
ls
cd ..
ls
cd ..
ls
rm -rf node-v8.11.1-linux-armv7l.tar.xz 
rm -rf opencv*
ls
cd node-v8.11.1-linux-armv7l/
d ..
cd ..
rm -rf node-v8.11.1-linux-armv7l/
rm get-pip.py 
ls
python
node
cd nodeopencv/
node
ls
cd ..
sudo apt autoclean
sudo apt update
sudo apt upgrade
sudo shutdown
sudo shutdown -h  now
nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo nano /etc/proftpd/proftpd.conf 
sudo raspi-config 
ls
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
sudo halt 
ls
cd drowsyapp
ls
ls -la
python3
git pull
git status
git pull
cd ..
ls
rm -R drowsyapp
ls
rmdir -R drowsyapp
rmdir -r drowsyapp
rm -rf drowsyapp/
ls
git clone git@github.com:exnx/drowsyapp.git
pbcopy < ~/.ssh/id_rsa.pub
ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "eric.tung.nguyen@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
~/.ssh/config
ls
cd sshkey
sshkey
cd ~
ls
ls -la
ssh-keygen -t rsa -b 4096 -C "eric.tung.nguyen@gmail.com"
ls
ls -la
rm sshkey
rm sshkey.pub
ls
ssh-add -K ~/.ssh/id_rsa
eval "$(ssh-agent -s)"
~/.ssh/config
ssh-add -K ~/.ssh/id_rsa
touch .ssh/config
cd .ssh
ls
touch config
node config
nano config
/usr/bin/ssh-add -K ~/.ssh/id_rsa
cd ..
/usr/bin/ssh-add -K ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa &>/dev/null
pbcopy < ~/.ssh/id_rsa.pub
ls
ls -la
cd .ssh
ls
nano id_rsa
ls
cd ..
ls -l
ls -la
pbcopy < ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub 
git clone git@github.com:exnx/drowsyapp.git
cd -la
ls -la
cd .config
ls
ls -la
cd ..
ls -la
cd .ssh
ls -la
nano config
cd ..
ls -la
git clone Host *
Host *
git clone https://github.com/exnx/drowsyapp.git
git clone git@github.com:exnx/drowsyapp.git
git clone https://github.com/exnx/drowsyapp.git
ls
git clone https://github.com/exnx/drowsyapp.git
git clone git@github.com:exnx/drowsyapp.git
git remote set-url origin https://github.com/exnx/drowsyapp.git
git remote set-url origin git@github.com:exnx/drowsyapp.git
ls -la
eval "$(ssh-agent -s)"
ssh-add
git clone https://github.com/exnx/drowsyapp.git
ls -la
cd .ssh
ls -la
cat config
nano config
git clone https://github.com/exnx/drowsyapp.git
cd ..
ls -la
cd .ssh
ls
cat id_rsa
cat ~/.ssh/id_rsa.pub
git clone https://github.com/exnx/drowsyapp.git
ls
rm -rf drowsyapp
ls 
cd ..
git clone https://github.com/exnx/drowsyapp.git
ls 
cd drowsyapp
ls 
source drowsy-env/bin/activate
python3
pip3 install opencv-python
pip install --upgrade pip
pip3 install opencv-python
python3
pip3 install obd
python3
deactivate
python3
source drowsy-env/bin/activate
cd ..
ls
workon cv
python3
pip3 install obd
python3
python3 pi_detect_drowsiness.py --cascade haarcascade_frontalface_default.xml --shape-predictor shape_predictor_68_face_landmarks.dat --alarm 1
cd drow
ls
cd drowsyapp/
ls
cd pi
cd pi-drowsiness-detection/
python3 pi_detect_drowsiness.py --cascade haarcascade_frontalface_default.xml --shape-predictor shape_predictor_68_face_landmarks.dat --alarm 1
                                              ls
cd drowsyapp/
ls
cd pi-drowsiness-detection/
workon cv
ls
python pyserial_test.py 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ls
sudo apt-get install espeak
nano /etc/rc.local
sudo nano /etc/rc.local
sudo reboot
sudo nano /etc/rc.local
nano .profile
sudo reboot
ls
sudo nano /etc/rc.local
nano .bashrc
sudo reboot
nano .bashrc
ls
ls -a
nano bashrc
ls
ls -a
nano .bashrc
nano .profile
ls
mkdir pi-reboot
ls
cd pi-reboot/
nano on_reboot.sh
ls
cd ..
rmdir pi-reboot/
ls
nano on_reboot.sh
ls
chmod +x on_reboot.sh 
apt-get crontab
apt-get install crontab
sudo apt-get install crontab
crontab -e
sudo reboot
ls
nano on_reboot.sh 
crontab -e
sudo rebooty
sudo reboot
ls
workon cv
python3 face_crop.py
ls
workon cv
ls
python face_crop.py 
ls
nano on_reboot.sh 
python face_crop.py 
sudo reboot
startx
startX
sudo apt-get install xorg openbox
startx
ls
which startx
nano face_crop.py 
startx python face_crop.py 
python face_crop.py 
which openbox
openbox
#sudo apt-get install lxde-core xserver-xorg xinit
sudo apt-get install lxde-core xserver-xorg xinit
exec startlxde
sudo reboot
logout
python face_crop.py 
xeyes
bg
python face_crop.py 
logout
workon cv
lsc -la
ls -la
cat .ssh
ls .ssh
cd ..
ls
cd
cat .bashrc
source .bash_profile
ls
ls -la
source .bashrc
workon cv
cat .profile
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
workon cv
python face_crop.py 
arduino
xterm
ls
cd Pictures/
ls
python
sudo shutdown -h now 
workon cv
ls
source activate cv
ls
cat on_reboot.sh
sudo reboot
