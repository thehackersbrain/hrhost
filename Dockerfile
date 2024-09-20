FROM kalilinux/kali-rolling

# Installing System Tools
RUN apt update -y && apt upgrade -y && \
		apt install curl wget nmap vim curl iputils-ping git tmux golang pipx -y && \
		apt clean -y

RUN git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

COPY ./data/configs/tmux.conf /root/.tmux.conf
RUN echo 'export PATH=$PATH:/root/go/bin:/root/.local/bin' >> /root/.bashrc

ENV RECON_PATH=/root/data/recon/

# WORKDIR $RECON_PATH
WORKDIR /root
RUN ./tools.sh

CMD ["/bin/bash"]
