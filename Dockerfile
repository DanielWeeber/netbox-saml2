FROM netboxcommunity/netbox:latest
RUN apk add --no-cache xmlsec

RUN . /opt/netbox/venv/bin/activate \
    && /opt/netbox/venv/bin/pip install --no-cache-dir --no-warn-script-location django3-auth-saml2 "netbox-plugin-auth-saml2>=2.3" \
    && /opt/netbox/venv/bin/pip install --no-cache-dir "pysaml2>=7.0 netbox-secrets"
