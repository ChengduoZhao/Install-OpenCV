#安装依赖包(很重要） 
yum install cmake gcc gcc-c++ gtk+-devel gimp-devel gimp-devel-tools gimp-help-browser zlib-devel libtiff-devel libjpeg-devel libpng-devel gstreamer-devel libavc1394-devel libraw1394-devel libdc1394-devel jasper-devel jasper-utils swig python libtool nasm 
#安装opencv
echo "Downloading OpenCV 2.4.10"
wget -O OpenCV-2.4.10.zip http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.10/opencv-2.4.10.zip/download
echo "Installing OpenCV 2.4.10"
unzip OpenCV-2.4.10.zip
cd opencv-2.4.10
cmake -DCMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -DBUILD_NEW_PYTHON_SUPPORT=NO  -D WITH_OPENGL=ON -D CUDA_GENERATION=Auto .
make -j4
sudo make install -j8
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
echo "OpenCV 2.4.10 ready to be used"




