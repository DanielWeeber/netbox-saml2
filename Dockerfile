FROM netboxcommunity/netbox:latest
RUN apk add --no-cache xmlsec
COPY requirements.txt /
RUN . /opt/netbox/venv/bin/activate && pip install --no-warn-script-location -r  /requirements.txt