## docker-heidisql
Dockerized HeidiSQL (wine)

### Usage
Run the following command

    docker run -it --rm \
        --name heidisql \
        --user=$USER \
        --env="DISPLAY" \
        -e "WINEPREFIX=/home/$USER/.wine32" \
        --workdir="/home/$USER" \
        --volume="/home/$USER:/home/$USER" \
        --volume="/etc/group:/etc/group:ro" \
        --volume="/etc/passwd:/etc/passwd:ro" \
        --volume="/etc/shadow:/etc/shadow:ro" \
        --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
        -v /etc/machine-id:/etc-machine-id:ro \
        --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        -v /etc/localtime:/etc/localtime:ro \
        --hostname docker-heidisql \
    tsari/heidisql
    