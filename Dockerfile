FROM ollama/ollama

COPY certificates/mitmproxy-ca-cert.pem /usr/local/share/ca-certificates/mitmproxy-ca.crt

RUN update-ca-certificates