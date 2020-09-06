setup-python3:
	sudo apt update 
	sudo apt upgrade
	sudo apt-get install software-properties-common
	# remove exiting python3 version from system
	sudo apt purge python3
	# Add deadsnakes PPA to sources
	sudo add-apt-repository ppa:deadsnakes/ppa
	# Press Enter to continue
	# Install Python 3.7
	sudo apt install python3.7
	sudo apt install --upgrade pip3