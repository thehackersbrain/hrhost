FROM kalilinux/kali-rolling

# Installing System Tools
RUN apt update -y && apt upgrade -y && \
		apt install curl wget nmap vim curl iputils-ping git tmux golang -y && \
		apt clean -y

# Installing Tools
RUN go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

RUN git clone https://github.com/thehackersbrain/webhawk.git /opt/webhawk
RUN git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

COPY tmux.conf /root/.tmux.conf
RUN echo 'export PATH=$PATH:/root/go/bin' >> /root/.bashrc

ENV RECON_PATH=/opt/webhawk

# WORKDIR $RECON_PATH
WORKDIR /root
RUN id

CMD ["/bin/bash"]
