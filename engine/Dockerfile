FROM python:3.5-buster

RUN apt-get update && apt-get install -y --no-install-recommends \
  hostapd dnsmasq

# Install python libraries through pip
# RUN pip3 install 

# Set the work directory
WORKDIR /code

# Run Gateway
CMD ["./entry.sh"]
