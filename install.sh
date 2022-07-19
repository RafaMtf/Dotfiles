#!/usr/bin/env bash

# Install all packages
sudo pacman -Syy --needed --noconfirm acl adobe-source-code-pro-fonts adwaita-icon-theme alacritty alsa-card-profiles alsa-lib alsa-topology-conf alsa-ucm-conf aom archlinux-keyring argon2 at-spi2-atk at-spi2-core atk atkmm attr audit autoconf automake avahi base bash binutils bison bluez-libs brotli bspwm bzip2 c-ares ca-certificates ca-certificates-mozilla ca-certificates-utils cairo cairomm cantarell-fonts code coreutils cryptsetup curl dav1d db dbus dbus-glib dconf desktop-file-utils device-mapper diffutils double-conversion duktape e2fsprogs electron18 expat fakeroot ffmpeg file filesystem findutils firefox flac flex fontconfig freetype2 fribidi gawk gc gcc gcc-libs gdbm gdk-pixbuf2 gettext giflib git glib-networking glib2 glibc glibmm gmp gnu-free-fonts gnupg gnutls gpgme gpm graphite grep groff grub gsettings-desktop-schemas gsm gst-plugin-pipewire gst-plugins-base-libs gstreamer gtk-update-icon-cache gtk2 gtk3 gtkmm guile gzip harfbuzz hicolor-icon-theme hidapi htop hwdata iana-etc icu imagemagick iproute2 iptables iputils iso-codes jansson json-c json-glib jsoncpp kbd keyutils kmod krb5 l-smash lame lcms2 less libarchive libass libassuan libasyncns libavc1394 libbluray libbpf libcap libcap-ng libcloudproviders libcolord libconfig libcups libdaemon libdatrie libdrm libedit libelf libepoxy libev libevdev libevent libfdk-aac libffi libfontenc libfreeaptx libgcrypt libglvnd libgpg-error libgudev libice libidn2 libiec61883 libinput libisl libjpeg-turbo libksba libldac libldap liblqr libluv libmfx libmm-glib libmnl libmodplug libmpc libmpdclient libndp libnetfilter_conntrack libnewt libnfnetlink libnftnl libnghttp2 libnl libnm libnsl libogg libomxil-bellagio libp11-kit libpcap libpciaccess libpgm libpipeline libpng libproxy libpsl libpulse libraqm libraw1394 librsvg libsasl libseccomp libsecret libsigc++ libsm libsndfile libsodium libsoup libsoup3 libsoxr libssh libssh2 libstemmer libsysprof-capture libtasn1 libteam libtermkey libthai libtheora libtiff libtirpc libtool libunistring libunwind libusb libuv libva libvdpau libverto libvorbis libvpx libvterm01 libwacom libwebp libx11 libxau libxaw libxcb libxcomposite libxcrypt libxcursor libxcvt libxdamage libxdg-basedir libxdmcp libxext libxfixes libxfont2 libxft libxi libxinerama libxkbcommon libxkbcommon-x11 libxkbfile libxklavier libxml2 libxmu libxpm libxrandr libxrender libxshmfence libxslt libxt libxtst libxv libxxf86vm licenses lightdm lilv linux-api-headers linux-firmware linux-firmware-whence linux-zen llvm-libs lm_sensors lua luajit lv2 lxsession lz4 lzo m4 mailcap make man-db md4c mesa minizip mkinitcpio mkinitcpio-busybox mobile-broadband-provider-info mpfr msgpack-c mtdev ncurses neofetch neovim nettle networkmanager nitrogen npth nspr nss opencore-amr openjpeg2 openssl opus orc p11-kit pacman pacman-mirrorlist pam pambase pango pangomm papirus-icon-theme patch pciutils pcre pcre2 perl perl-error perl-mailtools perl-timedate picom pinentry pipewire pipewire-alsa pipewire-jack pipewire-pulse pixman pkgconf polkit polybar popt procps-ng psmisc python python-appdirs python-jaraco.context python-jaraco.functools python-jaraco.text python-more-itertools python-nspektr python-ordered-set python-packaging python-pyparsing python-pywal python-setuptools python-tomli python-trove-classifiers python-validate-pyproject qt5-base qt5-declarative qt5-translations rav1e re2 readline rest ripgrep rofi sbc sddm sdl2 sed serd shadow shared-mime-info slang snappy sord speex speexdsp spice sqlite sratom srt startup-notification sudo svt-av1 sxhkd sysfsutils systemd systemd-libs systemd-sysvcompat tar texinfo tpm2-tss tracker3 tree-sitter tslib tzdata unibilium util-linux util-linux-libs v4l-utils vid.stab vmaf vulkan-icd-loader wayland webrtc-audio-processing wget which wireplumber wpa_supplicant x264 x265 xcb-proto xcb-util xcb-util-cursor xcb-util-image xcb-util-keysyms xcb-util-renderutil xcb-util-wm xcb-util-xrm xdg-utils xf86-input-libinput xf86-video-qxl xf86-video-vesa xkeyboard-config xorg-bdftopcf xorg-docs xorg-font-util xorg-fonts-100dpi xorg-fonts-75dpi xorg-fonts-alias-100dpi xorg-fonts-alias-75dpi xorg-fonts-encodings xorg-iceauth xorg-mkfontscale xorg-server xorg-server-common xorg-server-devel xorg-server-xephyr xorg-server-xnest xorg-server-xvfb xorg-sessreg xorg-setxkbmap xorg-smproxy xorg-util-macros xorg-x11perf xorg-xauth xorg-xbacklight xorg-xcmsdb xorg-xcursorgen xorg-xdpyinfo xorg-xdriinfo xorg-xev xorg-xgamma xorg-xhost xorg-xinit xorg-xinput xorg-xkbcomp xorg-xkbevd xorg-xkbutils xorg-xkill xorg-xlsatoms xorg-xlsclients xorg-xmodmap xorg-xpr xorg-xprop xorg-xrandr xorg-xrdb xorg-xrefresh xorg-xset xorg-xsetroot xorg-xvinfo xorg-xwayland xorg-xwd xorg-xwininfo xorg-xwud xorgproto xvidcore xz zeromq zimg zlib zram-generator zstd

# Make directories
mkdir ~/Downloads/
mkdir ~/Desktop/
mkdir ~/.cache/
mkdir ~/.local/

# Copy files to directories
cp -r $HOME/dotfiles/.config ~/
cp $HOME/dotfiles/.bashrc $HOME/
cp $HOME/dotfiles/.xinitrc $HOME/

# Install fonts
FDIR="$HOME/.local/share/fonts"

install_fonts() {
	echo -e "\n[*] Installing fonts..."
	if [[ -d "$FDIR" ]]; then
		cp -rf $DIR/fonts/* "$FDIR"
	else
		mkdir -p "$FDIR"
		cp -rf $DIR/fonts/* "$FDIR"
	fi
}

install_fonts