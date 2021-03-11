FROM tensorflow/tensorflow:nightly-gpu
ADD python/requirements.txt requirements.txt
ADD scripts.sh scripts.sh
#WORKDIR .
RUN pip3 install -r requirements.txt
RUN bash -c scripts.sh
