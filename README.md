# HR Host
A quick script to setup kali linux docker container for hacking and recon on Google Cloud.

- Build and run the docker image

```bash
git clone https://github.com/thehackersbrain/hrhost.git
cd hrhost
docker build -t hrserver .
docker run -it -v /home/thehackersbrain3/hrhost/recon:/root/recon hrserver /bin/bash
```

- Oneliner for start the machine

```bash
git clone https://github.com/thehackersbrain/hrhost.git && cd hrhost && docker build -t hrserver . && docker run -it -v /home/thehackersbrain3/hrhost/recon:/root/recon hrserver /bin/bash
```

- Oneliner for starting the recon

```bash
docker run -v $(pwd)/output:/opt/webhawk/output hrserver /bin/bash -c "cd /opt/webhawk && ./run_recon.sh"
```
