# cisco-nso-docker
Finally got nso working in a container

1. You need to unzip the file downloaded from Cisco. That's the one that this installer will look for.
2. Be sure to modify the file name to fit your nso version
3. The DockerFile and scipt will create all the needed directories, you shouldn't need anything.
4. The Dockerfile also adds +x perms on the .sh file, which allows its execution

Most of this work was adapted from https://github.com/NSO-developer/container-examples/tree/master/nso-docker.
