FROM balenalib/raspberrypi3-python:3.9

RUN apt-get update && apt-get install -y --no-install-recommends \
  hostapd dnsmasq gcc musl-dev alsa-base alsa-utils libffi-dev python3-dev libportaudio2 wget unzip python3-rpi.gpio

# Install python libraries through pip

RUN pip3 install note-python pymongo sounddevice vosk

# Download Model from https://alphacephei.com/vosk/models
RUN mkdir /dl
RUN wget http://alphacephei.com/vosk/models/vosk-model-small-en-us-0.15.zip -O /dl/model.zip

# Extract zip file
RUN mkdir /code
RUN unzip /dl/model.zip -d /code/model

# Copy Engine to Code
COPY ./ /code

# Run Engine
CMD modprobe i2c-dev && bash /code/entry.sh
