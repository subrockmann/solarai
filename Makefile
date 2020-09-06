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
	sudo apt install python3.7 -y
	sudo apt install python3-pip -y
	sudo pip3 install --upgrade pip
	sudo pip3 install virtualenv

install-base:
	# This should be run from inside a virtual environment
	sudo pip install wheel
	sudo app-get install python-numpy
	sudo pip install -r requirements-base.txt

install-gdal:
	sudo add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
	sudo apt-get install gdal-bin python3-gdal libgdal-dev -y
	gdalinof --version