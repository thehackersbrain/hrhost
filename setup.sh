#!/bin/bash

pull_kali_image() {
    echo "Pulling the latest Kali Linux Docker image..."
    docker pull kalilinux/kali-rolling
}

# Function to run Kali Linux Docker container with custom commands
run_kali_container() {
    echo "Running Kali Linux Docker container and installing necessary packages..."

    # Run the Kali Linux container and install custom packages
    # sudo docker run -it kalilinux/kali-rolling /bin/bash -c "
    #     apt update && apt upgrade -y && \
    #     apt install -y nmap net-tools curl vim git && \
    #     echo 'Kali Linux container setup complete with custom packages.' && \
    #     bash
    # "
    docker run --rm kalilinux/kali-rolling /bin/bash -c "
    apt update && apt upgrade -y && \
    apt install -y nmap net-tools curl vim git && \
    echo 'Kali Linux container setup complete with custom packages.'
		"
}

# Main function
main() {
    pull_kali_image

    run_kali_container
}

main
