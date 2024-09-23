#!/bin/bash

SRC_URL=$1

hail_hrs() {
	git clone https://github.com/thehackersbrain/hrhost.git
	cd hrhost
	wget $SRC_URL/config.zip && unzip config.zip
	docker build -t hrs .
	docker run -it -v /home/thehackersbrain3/hrhost/recon:/root/recon hrs /bin/bash
}


main() {
	hail_hrs
}

main
