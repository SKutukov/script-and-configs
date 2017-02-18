sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
cd /opt
sudo git clone https://github.com/Itseez/opencv.git
cd opencv
sudo git checkout 3.1.0
sudo mkdir release
cd release
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local /opt/opencv/
sudo make -j4
sudo make install
pkg-config --modversion opencv

