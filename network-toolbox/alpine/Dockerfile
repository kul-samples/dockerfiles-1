FROM alpine:3.16

RUN apk add --no-cache \
		bash \
		bash-completion \
		bind-tools \
		ca-certificates \
		curl \
		fcgi \
		fio \
		gnupg \
		iftop \
		ipcalc \
		iperf \
		iptables \
		iputils \
		libressl \
		mtr \
		net-tools \
		nmap \
		openssh-client \
		rsync \
		socat \
		tshark \
		wget \
		whois
# TODO add "nbtscan" when we get to Alpine 3.17 (if it makes it out of edge)
# https://pkgs.alpinelinux.org/packages?name=nbtscan&branch=edge&arch=x86_64

CMD ["bash", "--login", "-i"]
