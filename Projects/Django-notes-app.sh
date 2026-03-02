#!/bin/bash
set -e   # Exit if any command fails
code_clone() {
    if [[ -d "django-notes-app" ]]
	then
	echo "Repository already exists. Skipping clone."
    else 
	echo "Cloning the Django app..."
    	git clone https://github.com/LondheShubham153/django-notes-app.git
    fi
}
install_requirements() {
    echo "Installing dependencies..."
    sudo apt-get update && sudo apt-get install -y docker.io nginx
}
required_restarts() {
    echo "Starting and enabling services..."
    sudo systemctl enable --now docker
    sudo systemctl enable --now nginx
}
deploy(){
    cd django-notes-app || return 1
    echo "Building Docker image..."
    echo "Building and running Docker container..."

    #docker build -t notes_app . || return 1
    #docker run -d -p 8000:8000 notes_app:latest || return 1

    sudo docker-compose down 2>/dev/null || true
    sudo docker-compose up --build -d || return 1
	return 0
}
echo "***********Deployment Start************"
code_clone
install_requirements
required_restarts
if ! deploy; then
	echo "Deployment failed. Mailing the admin..."
	echo "Deployment failed on $(hostname) at $(date)" | mail -s "Deployment Failed" riteshswain1973@gmail.com
	exit 1
fi
echo "***********Deployment End**************"


