# HR Host
A quick script to setup kali linux docker container for hacking and recon on Google Cloud.

- Build and run the docker image

```bash
git clone https://github.com/thehackersbrain/hrhost.git
cd hrhost
docker build -t kali-recon .
docker run --rm -it kali-recon
```

- Oneliner for starting the recon

```bash
docker run --rm -v $(pwd)/output:/opt/recon-tool/output kali-recon /bin/bash -c "cd /opt/recon-tool && ./run_recon.sh"
```
