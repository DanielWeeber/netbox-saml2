FROM netboxcommunity/netbox:latest
RUN apt update && apt install -y xmlsec1

RUN . /opt/netbox/venv/bin/activate \
    && /opt/netbox/venv/bin/pip install --no-cache-dir --no-warn-script-location django3-auth-saml2 "netbox-plugin-auth-saml2>=2.3" \
    && /opt/netbox/venv/bin/pip install --no-cache-dir "pysaml2>=7.0" \
    && /opt/netbox/venv/bin/pip install --no-cache-dir "netbox-secrets"
