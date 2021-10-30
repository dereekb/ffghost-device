FROM balenalib/raspberry-pi-debian-python:latest

# Install python libraries through pip
RUN pip3 install -U https://github.com/alphacep/vosk-api/releases/download/0.3.7/vosk-0.3.7-cp38-cp38-macosx_10_12_x86_64.whl
RUN pip3 install note-python pymongo

# Set the work directory
WORKDIR /code

# Run Gateway
CMD ["./entry.sh"]
