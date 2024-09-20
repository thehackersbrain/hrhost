FROM kalilinux/kali-rolling

RUN apt update -y && apt upgrade -y && \
		apt install curl wget nmap vim curl \
		iputils-ping git && \
		apt clean -y


RUN git clone https://github.com/thehackersbrain/webhawk.git /opt/webhawk

ENV RECON_PATH=/opt/webhawk

WORKDIR $RECON_PATH
RUN id

CMD ["/bin/bash"]
