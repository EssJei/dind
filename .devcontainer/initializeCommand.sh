#!/bin/bash
# Reclaim disk space without deleting the codespace's own containers/images.
# Codespaces tags its infrastructure with label=Type=codespaces — never prune it.
docker container prune --force --filter "label!=Type=codespaces" || true
docker image prune --force || true
