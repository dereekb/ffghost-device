FROM balenalib/raspberrypi3-python:3.9

RUN apt-get update && apt-get install -y --no-install-recommends \
  hostapd dnsmasq gcc musl-dev zip
RUN apt-get install -y --no-install-recommends libffi-dev python3-dev libportaudio2 wget unzip

# Install python libraries through pip
RUN pip3 install vosk
RUN pip3 install note-python pymongo
RUN pip3 install sounddevice

# Set the work directory
WORKDIR /code

# Download Model from https://alphacephei.com/vosk/models
RUN mkdir /dl
RUN wget http://alphacephei.com/vosk/models/vosk-model-small-en-us-0.15.zip -O /dl/model.zip

# Extract zip file
RUN cd /dl && unzip /dl/model.zip -d /code/model

# Run Gateway
CMD ["./entry.sh"]
