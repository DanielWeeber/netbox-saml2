FROM netboxcommunity/netbox:latest
RUN apk add --no-cache xmlsec
COPY requirements.txt /
RUN /opt/netbox/venv/bin/pip install -r /requirements.txt