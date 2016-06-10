FROM jess/wine
MAINTAINER Tibor Sári <tiborsari@gmx.de>

RUN apt-get update && apt-get install -y \
        unzip \
        wget \
        sudo \
        --no-install-recommends \
        && rm -rf /var/lib/apt/lists/*

RUN mkdir -m 777 /home/wine && \
    cd /home/wine && \
    wget http://www.heidisql.com/downloads/releases/HeidiSQL_9.3_Portable.zip && \
    unzip /home/wine/HeidiSQL_9.3_Portable.zip && \
    chmod -R 777 /home/wine


COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set up the command arguments
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["wine", "/home/wine/heidisql.exe"]