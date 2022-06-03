FROM netboxcommunity/netbox:latest
RUN /opt/netbox/venv/bin/pip install -r /requirements.txt