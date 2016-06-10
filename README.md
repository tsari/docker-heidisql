## docker-heidisql
Dockerized HeidiSQL (wine)

### Usage
Run the following command

    docker run -it --rm \
        -e "USER" \
        -e "UID=$(id -u)" \
        -e "GID=$(id -g)" \
        -e "DISPLAY" \
        -e "WINEPREFIX=/home/$USER/.wine32" \
        --workdir="/home/$USER" \
        --volume="/home/$USER:/home/$USER" \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        --volume="/home/$USER/.heidisql/portable_settings.txt:/home/wine/portable_settings.txt" \
        --net="host" \
    tsari/heidisql
    