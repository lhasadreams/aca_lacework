# aca_lacework

Purpose:

To build a Docker Image with the Lacework Agent embedded in it and the entry point set to start the agent and then the m ain application - in this case a test Flask app.

Set up:

Get an agent key from Lacework and add it to buildandpush.sh

Update the target docker registry in buildandpush.sh

Run:

Execute buildandpush.sh to build the docker image and push to a repository that ACA can access.