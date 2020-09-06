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

	#sudo pip3 install virtualenv

virtualenv:
	sudo python3.7 -m venv .omdena
	source .omdena/bin/activate


install-base:
	# This should be run from inside a virtual environment
	# inside the environment pip references pip3
	# do not use 'sudo pip' inside the environment
	pip install wheel --user
	#pip install cmake --user
	#pip install setuptools --user
	#sudo apt-get install python-numpy -y
	#pip install -r requirements-base.txt
	#pip install numpy  #did not get picked up from requirements

install-gdal:
	sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
	sudo apt-get install gdal-bin python3-gdal libgdal-dev -y
	gdalinfo --version

install-gis:
	sudo pip install affine cligj click enum34
	sudo pip install rasterio
	sudo pip install geopandas
	sudo apt-get install -y libspatialindex-dev
	sudo pip install Rtree
	#sudo pip install python3-rtree   ## requires libspatialindex
	#sudo apt-get build-dep python3-lxml
	sudo pip install lxml

install-pycoco:
	sudo pip install cython
	sudo pip install opencv-python pillow pycocotools matplotlib 
