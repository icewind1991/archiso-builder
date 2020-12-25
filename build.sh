#!/bin/sh

cat /pacman.conf >> /archlive/pacman.conf
cat /packages.x86_64 >> /archlive/packages.x86_64

while read KEY
do
    pacman-key -r $KEY
done < /gpg_keys.txt

mkarchiso -v -w /tmp/archiso-tmp -o /output /archlive
