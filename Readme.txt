1. Execute below 2 commands to install docker

chmod +x install_docker.sh
bash -c "/install_docker.sh"

2. mkdir dev
   cd dev
   git clone https://github.com/CavinKare-Digital/docker-gpu-config.git
   cd docker-gpu-config
   docker build -t virtual-gpu .
   docker-compose up
   docker run -it virtual-gpu bash






