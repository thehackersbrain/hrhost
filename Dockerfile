FROM kalilinux/kali-rolling

RUN apt update -y && apt upgrade -y && \
		apt install curl wget nmap vim curl iputils-ping git tmux && \
		apt clean -y

RUN git clone https://github.com/thehackersbrain/webhawk.git /opt/webhawk
RUN git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

COPY tmux.conf /root/.tmux.conf

ENV RECON_PATH=/opt/webhawk

# WORKDIR $RECON_PATH
WORKDIR /root
RUN id

CMD ["/bin/bash"]
