FROM archlinux

RUN pacman -Syu --noconfirm archiso && \
	cp -r /usr/share/archiso/configs/releng/ /archlive

COPY build.sh /build.sh
COPY packages.x86_64 /packages.x86_64
COPY pacman.conf /pacman.conf
COPY gpg_keys.txt /gpg_keys.txt

ENTRYPOINT ["/build.sh"]
