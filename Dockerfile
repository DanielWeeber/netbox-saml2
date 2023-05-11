FROM netboxcommunity/netbox:latest
RUN apt update && apt install -y xmlsec1
COPY plugins_to_install.txt plugins_to_install.txt
RUN . /opt/netbox/venv/bin/activate \
    && /opt/netbox/venv/bin/pip install --no-cache-dir --no-warn-script-location -r plugins_to_install.txt
