FROM balenalib/raspberrypi3-python:3.9

RUN apt-get update && apt-get install -y --no-install-recommends \
  hostapd dnsmasq gcc musl-dev
RUN apt-get install -y --no-install-recommends libffi-dev python3-dev libportaudio2

# Install python libraries through pip
RUN pip3 install vosk
RUN pip3 install note-python pymongo
RUN pip3 install sounddevice

# Set the work directory
WORKDIR /code

# Run Gateway
CMD ["./entry.sh"]
