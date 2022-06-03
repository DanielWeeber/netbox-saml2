FROM netboxcommunity/netbox:latest
COPY requirements.txt /
RUN /opt/netbox/venv/bin/pip install -r /requirements.txt