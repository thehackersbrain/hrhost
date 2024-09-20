#!/bin/bash

hail_hrs() {
	git clone https://github.com/thehackersbrain/hrhost.git
	cd hrhost
	docker build -t hrs .
	docker run -it -v /home/thehackersbrain3/hrhost/recon:/root/recon hrs /bin/bash
}

main() {
	hail_hrs
}

main
