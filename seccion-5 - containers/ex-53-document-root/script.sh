docker info | grep -i root
vi /lib/systemd/system/docker.service

# Al final de la linea "ExecStart=" añadimos "--data-root <NEW PATH OF DOCUMENT ROOT>/docker"

systemctl daemon-reload
systemctl restart docker
mv /var/lib/docker <NEW PATH OF DOCUMENT ROOT>

docker info | grep -i root