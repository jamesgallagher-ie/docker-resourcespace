FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
	apache2 \
	php7.0 \
	php7.0-dev \
	php7.0-gd \
	php7.0-mysql \
	php-mbstring \
	php-zip \
	libapache2-mod-php \
	subversion \
	nano \
	imagemagick \
	ghostscript \
	antiword \
	xpdf \
	libav-tools \
	libimage-exiftool-perl \
	cron \
	wget

CMD ["apache2","-DFOREGROUND"]