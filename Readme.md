# Quick PoC for Ollama and Mitmproxy

This is a quick proof of concept to run Ollama in a docker container and use mitmproxy to intercept the requests.

## Setup

1. Start the containers

```bash
$ docker compose up -d
```

2. Open the mitmproxy web interface, <http://localhost:8081>, the password is **`root`**.

3. Load some model into Ollama, for example:

```bash
$ docker compose exec ollama ollama run tinyllama
```

4. Watch the model being loaded via the mitmproxy web interface.

5. Once the model is loaded, you can interact with it using the Ollama CLI. You will notice that no requests are being intercepted by mitmproxy, as Ollama uses a local API.

6. Tear everything down

```bash
$ docker compose down
```
