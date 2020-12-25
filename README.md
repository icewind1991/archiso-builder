# archiso-builder

Docker image for building customized archiso images.

## Usage

docker run -it --privileged --rm -v $PWD/out:/output icewind1991/archiso-builder

### Why --privileged

The archiso build scripts requires being to mount an "airootfs" image.

## Customizing

You can customize the build iso by chaning the following config files, you can either build a new docker image with the new config files, or mount them into the docker image when running.

 - `pacman.conf` gets added to the pacman.conf used during the build process
 - `gpg_keys.txt` list of keys to be added to the pacman keyring for the build process, one key id per line
 - `packages.x86_64` list of packages to install into the image, one package per line

By default the docker image is configured to add `zfs` support to the iso.
