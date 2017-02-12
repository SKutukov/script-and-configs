# install dependencies
sudo apt-get autoremove libopencv-dev python-opencv
sudo apt-get install cmake build-essential
sudo apt-get install libgtk2.0-dev libgtkglext1-dev
sudo apt-get install libqt4-dev libpangox-1.0-dev libxmu-dev libxmu-headers
sudo apt-get install zlib1g-dev libjpeg-dev libpng12-dev libtiff5-dev libjasper-dev
sudo apt-get install libdc1394-22 libdc1394-22-dev libavcodec-dev libavformat-dev libavresample-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-good1.0-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev v4l-utils libxine2-dev libmp3lame-dev libfaac-dev yasm
sudo apt-get install libeigen3-dev
sudo apt-get install libtbb-dev ocl-icd-opencl-dev opencl-headers
sudo apt-get install python-dev python-numpy python3-dev python3-numpy

#solve proplem : "Looking for linux/videodev.h - not found"  in cmake 
    cd /usr/include/linux
    sudo ln -s ../libv4l1-videodev.h videodev.h

# download opencv-2.4.13
cd ~
	wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.13/opencv-2.4.13.zip
	unzip opencv-2.4.13.zip
cd /opt
sudo mkdir opencv
cd opencv

	sudo cmake -G "Unix Makefiles" -D CMAKE_CXX_COMPILER=/usr/bin/g++ CMAKE_C_COMPILER=/usr/bin/gcc -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D BUILD_FAT_JAVA_LIB=ON -D INSTALL_TO_MANGLED_PATHS=ON -D INSTALL_CREATE_DISTRIB=ON -D INSTALL_TESTS=ON -D ENABLE_FAST_MATH=ON -D WITH_IMAGEIO=ON -D BUILD_SHARED_LIBS=OFF -D WITH_GSTREAMER=ON   ~/opencv-2.4.13
	sudo make -j4
	sudo make install

pkg-config --modversion opencv
echo "output should print out “2.4.13”"

