FROM tensorflow/tensorflow:nightly-gpu
ADD python/requirements.txt requirements.txt
ADD /scripts.sh scripts.sh
#WORKDIR .
#RUN python3 -m pip install --upgrade
RUN apt-get update
RUN apt-get install sudo -y
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN chmod +x scripts.sh
RUN bash -c "/scripts.sh"

