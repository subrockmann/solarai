setup-python3:
	sudo apt update 
	sudo apt upgrade
	sudo apt-get install software-properties-common && sudo apt-get update

	# remove exiting python3 version from system
	#sudo apt purge python3
	# Add deadsnakes PPA to sources
	sudo add-apt-repository ppa:deadsnakes/ppa
	# Press Enter to continue
	# Install Python 3.7
	sudo apt install python3.7 python3-venv python3.7-venv -y
	sudo apt install python3-pip -y
	#sudo apt install python3.7-pip -y
	sudo pip3 install --upgrade pip
	sudo apt-get install unzip	
	#sudo pip3 install setuptools  # needed for build of pycoco in Python3.6
	#sudo pip3 install virtualenv

	# update default python version on ubuntu - SYSTEM WIDE CHANGE!
	# https://linuxconfig.org/how-to-change-from-default-to-alternative-python-version-on-debian-linux
	sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
	sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 2
	sudo update-alternatives --list python

virtualenv:
	sudo python3.7 -m venv .omdena
	source .omdena/bin/activate



install-base:
	# This should be run from inside a virtual environment
	# inside the environment pip references pip3
	# do not use 'sudo pip' inside the environment
	export PIP_USER=false # fix error: https://github.com/pre-commit/pre-commit/issues/1151
	pip install wheel
	pip install cmake
	pip install setuptools
	sudo apt-get install python-numpy -y
	pip install -r requirements-base.txt
	pip install scikit-image
	#pip install numpy  #did not get picked up from requirements

install-gdal:
	sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
	sudo apt-get install gdal-bin python3-gdal libgdal-dev -y
	gdalinfo --version

install-gis:
	pip install affine cligj click enum34
	pip install rasterio
	pip install geopandas
	sudo apt-get install -y libspatialindex-dev
	pip install Rtree
	#sudo pip install python3-rtree   ## requires libspatialindex
	#sudo apt-get build-dep python3-lxml
	pip install lxml

install-pycoco:
	pip install cython
	pip install opencv-python pillow matplotlib 
	# wget -P /path/to/directory <download-url>
	mkdir tmp
	cd tmp
	wget -P coco.zip https://github.com/cocodataset/cocoapi/archive/master.zip 
	unzip coco.zip -d ./cocoapi
