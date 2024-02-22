#!/bin/sh

# Image info
export DOCKER_HUB="<replace with your own>"
export REPO_NAME="pythonapp"
export IMAGE_TAG="latest"

# Store the Lacework Agent access token in a file (See Requirements to obtain one)
echo <replace with your Lacework Agent Key> > token.key

# Build and tag the image
# --build-arg flag is optional, defaults to https://api.lacework.net. See https://docs.lacework.com/agent-server-url
DOCKER_BUILDKIT=1 docker build \
  --no-cache \
  --platform linux/amd64 \
  --secret id=LW_AGENT_ACCESS_TOKEN,src=token.key \
  --force-rm=true \
  --tag "${DOCKER_HUB}/${REPO_NAME}:${IMAGE_TAG}" .

#push the image
docker push ${DOCKER_HUB}/${REPO_NAME}:${IMAGE_TAG}