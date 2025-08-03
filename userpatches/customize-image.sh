#!/bin/bash

# arguments: $RELEASE $LINUXFAMILY $BOARD $BUILD_DESKTOP
#
# This is the image customization script

# NOTE: It is copied to /tmp directory inside the image
# and executed there inside chroot environment
# so don't reference any files that are not already installed

# NOTE: If you want to transfer files between chroot and host
# userpatches/overlay directory on host is bind-mounted to /tmp/overlay in chroot
# The sd card's root path is accessible via $SDCARD variable.

RELEASE=$1
LINUXFAMILY=$2
BOARD=$3
BUILD_DESKTOP=$4

Main() {
	case $RELEASE in
		stretch)
			# your code here
			# InstallOpenMediaVault # uncomment to get an OMV 4 image
			;;
		buster)
			# your code here
			;;
		bullseye)
			# your code here
			;;
		bookworm)
			cat > ${SDCARD}/etc/apt/sources.list.d/privat-in.list <<- EOF
				deb https://privat-in.de/repo bookworm main
				deb-src https://privat-in.de/repo bookworm main
			EOF
			cat > ${SDCARD}/etc/apt/trusted.gpg.d/privat-in.asc <<- EOF
				-----BEGIN PGP PUBLIC KEY BLOCK-----

				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
				xiYzukU=
				=Awke
				-----END PGP PUBLIC KEY BLOCK-----
			EOF
			;;
		bionic)
			# your code here
			;;
		focal)
			# your code here
			;;
	esac
} # Main

InstallOpenMediaVault() {
	# use this routine to create a Debian based fully functional OpenMediaVault
	# image (OMV 3 on Jessie, OMV 4 with Stretch). Use of mainline kernel highly
	# recommended!
	#
	# Please note that this variant changes Armbian default security 
	# policies since you end up with root password 'openmediavault' which
	# you have to change yourself later. SSH login as root has to be enabled
	# through OMV web UI first
	#
	# This routine is based on idea/code courtesy Benny Stark. For fixes,
	# discussion and feature requests please refer to
	# https://forum.armbian.com/index.php?/topic/2644-openmediavault-3x-customize-imagesh/

	echo root:openmediavault | chpasswd
	rm /root/.not_logged_in_yet
	. /etc/default/cpufrequtils
	export LANG=C LC_ALL="en_US.UTF-8"
	export DEBIAN_FRONTEND=noninteractive
	export APT_LISTCHANGES_FRONTEND=none

	case ${RELEASE} in
		jessie)
			OMV_Name="erasmus"
			OMV_EXTRAS_URL="https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/openmediavault-omvextrasorg_latest_all3.deb"
			;;
		stretch)
			OMV_Name="arrakis"
			OMV_EXTRAS_URL="https://github.com/OpenMediaVault-Plugin-Developers/packages/raw/master/openmediavault-omvextrasorg_latest_all4.deb"
			;;
	esac

	# Add OMV source.list and Update System
	cat > /etc/apt/sources.list.d/openmediavault.list <<- EOF
	deb https://openmediavault.github.io/packages/ ${OMV_Name} main
	## Uncomment the following line to add software from the proposed repository.
	deb https://openmediavault.github.io/packages/ ${OMV_Name}-proposed main
	
	## This software is not part of OpenMediaVault, but is offered by third-party
	## developers as a service to OpenMediaVault users.
	# deb https://openmediavault.github.io/packages/ ${OMV_Name} partner
	EOF

	# Add OMV and OMV Plugin developer keys, add Cloudshell 2 repo for XU4
	if [ "${BOARD}" = "odroidxu4" ]; then
		add-apt-repository -y ppa:kyle1117/ppa
		sed -i 's/jessie/xenial/' /etc/apt/sources.list.d/kyle1117-ppa-jessie.list
	fi
	mount --bind /dev/null /proc/mdstat
	apt-get update
	apt-get --yes --force-yes --allow-unauthenticated install openmediavault-keyring
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7AA630A1EDEE7D73
	apt-get update

	# install debconf-utils, postfix and OMV
	HOSTNAME="${BOARD}"
	debconf-set-selections <<< "postfix postfix/mailname string ${HOSTNAME}"
	debconf-set-selections <<< "postfix postfix/main_mailer_type string 'No configuration'"
	apt-get --yes --force-yes --allow-unauthenticated  --fix-missing --no-install-recommends \
		-o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install \
		debconf-utils postfix
	# move newaliases temporarely out of the way (see Ubuntu bug 1531299)
	cp -p /usr/bin/newaliases /usr/bin/newaliases.bak && ln -sf /bin/true /usr/bin/newaliases
	sed -i -e "s/^::1         localhost.*/::1         ${HOSTNAME} localhost ip6-localhost ip6-loopback/" \
		-e "s/^127.0.0.1   localhost.*/127.0.0.1   ${HOSTNAME} localhost/" /etc/hosts
	sed -i -e "s/^mydestination =.*/mydestination = ${HOSTNAME}, localhost.localdomain, localhost/" \
		-e "s/^myhostname =.*/myhostname = ${HOSTNAME}/" /etc/postfix/main.cf
	apt-get --yes --force-yes --allow-unauthenticated  --fix-missing --no-install-recommends \
		-o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" install \
		openmediavault

	# install OMV extras, enable folder2ram and tweak some settings
	FILE=$(mktemp)
	wget "$OMV_EXTRAS_URL" -qO $FILE && dpkg -i $FILE
	
	/usr/sbin/omv-update
	# Install flashmemory plugin and netatalk by default, use nice logo for the latter,
	# tweak some OMV settings
	. /usr/share/openmediavault/scripts/helper-functions
	apt-get -y -q install openmediavault-netatalk openmediavault-flashmemory
	AFP_Options="mimic model = Macmini"
	SMB_Options="min receivefile size = 16384\nwrite cache size = 524288\ngetwd cache = yes\nsocket options = TCP_NODELAY IPTOS_LOWDELAY"
	xmlstarlet ed -L -u "/config/services/afp/extraoptions" -v "$(echo -e "${AFP_Options}")" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/services/smb/extraoptions" -v "$(echo -e "${SMB_Options}")" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/services/flashmemory/enable" -v "1" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/services/ssh/enable" -v "1" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/services/ssh/permitrootlogin" -v "0" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/system/time/ntp/enable" -v "1" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/system/time/timezone" -v "UTC" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/system/network/dns/hostname" -v "${HOSTNAME}" /etc/openmediavault/config.xml
	xmlstarlet ed -L -u "/config/system/monitoring/perfstats/enable" -v "0" /etc/openmediavault/config.xml
	echo -e "OMV_CPUFREQUTILS_GOVERNOR=${GOVERNOR}" >>/etc/default/openmediavault
	echo -e "OMV_CPUFREQUTILS_MINSPEED=${MIN_SPEED}" >>/etc/default/openmediavault
	echo -e "OMV_CPUFREQUTILS_MAXSPEED=${MAX_SPEED}" >>/etc/default/openmediavault
	for i in netatalk samba flashmemory ssh ntp timezone interfaces cpufrequtils monit collectd rrdcached ; do
		/usr/sbin/omv-mkconf $i
	done
	/sbin/folder2ram -enablesystemd || true
	sed -i 's|-j /var/lib/rrdcached/journal/ ||' /etc/init.d/rrdcached

	# Fix multiple sources entry on ARM with OMV4
	sed -i '/stretch-backports/d' /etc/apt/sources.list

	# rootfs resize to 7.3G max and adding omv-initsystem to firstrun -- q&d but shouldn't matter
	echo 15500000s >/root/.rootfs_resize
	sed -i '/systemctl\ disable\ armbian-firstrun/i \
	mv /usr/bin/newaliases.bak /usr/bin/newaliases \
	export DEBIAN_FRONTEND=noninteractive \
	sleep 3 \
	apt-get install -f -qq python-pip python-setuptools || exit 0 \
	pip install -U tzupdate \
	tzupdate \
	read TZ </etc/timezone \
	/usr/sbin/omv-initsystem \
	xmlstarlet ed -L -u "/config/system/time/timezone" -v "${TZ}" /etc/openmediavault/config.xml \
	/usr/sbin/omv-mkconf timezone \
	lsusb | egrep -q "0b95:1790|0b95:178a|0df6:0072" || sed -i "/ax88179_178a/d" /etc/modules' /usr/lib/armbian/armbian-firstrun
	sed -i '/systemctl\ disable\ armbian-firstrun/a \
	sleep 30 && sync && reboot' /usr/lib/armbian/armbian-firstrun

	# add USB3 Gigabit Ethernet support
	echo -e "r8152\nax88179_178a" >>/etc/modules

	# Special treatment for ODROID-XU4 (and later Amlogic S912, RK3399 and other big.LITTLE
	# based devices). Move all NAS daemons to the big cores. With ODROID-XU4 a lot
	# more tweaks are needed. CS2 repo added, CS1 workaround added, coherent_pool=1M
	# set: https://forum.odroid.com/viewtopic.php?f=146&t=26016&start=200#p197729
	# (latter not necessary any more since we fixed it upstream in Armbian)
	case ${BOARD} in
		odroidxu4)
			HMP_Fix='; taskset -c -p 4-7 $i '
			# Cloudshell stuff (fan, lcd, missing serials on 1st CS2 batch)
			echo "H4sIAKdXHVkCA7WQXWuDMBiFr+eveOe6FcbSrEIH3WihWx0rtVbUFQqCqAkYGhJn
			tF1x/vep+7oebDfh5DmHwJOzUxwzgeNIpRp9zWRegDPznya4VDlWTXXbpS58XJtD
			i7ICmFBFxDmgI6AXSLgsiUop54gnBC40rkoVA9rDG0SHHaBHPQx16GN3Zs/XqxBD
			leVMFNAz6n6zSWlEAIlhEw8p4xTyFtwBkdoJTVIJ+sz3Xa9iZEMFkXk9mQT6cGSQ
			QL+Cr8rJJSmTouuuRzfDtluarm1aLVHksgWmvanm5sbfOmY3JEztWu5tV9bCXn4S
			HB8RIzjoUbGvFvPw/tmr0UMr6bWSBupVrulY2xp9T1bruWnVga7DdAqYFgkuCd3j
			vORUDQgej9HPJxmDDv+3WxblBSuYFH8oiNpHz8XvPIkU9B3JVCJ/awIAAA==" \
			| tr -d '[:blank:]' | base64 --decode | gunzip -c >/usr/local/sbin/cloudshell2-support.sh
			chmod 755 /usr/local/sbin/cloudshell2-support.sh
			apt install -y i2c-tools odroid-cloudshell cloudshell2-fan
			sed -i '/systemctl\ disable\ armbian-firstrun/i \
			lsusb | grep -q -i "05e3:0735" && sed -i "/exit\ 0/i echo 20 > /sys/class/block/sda/queue/max_sectors_kb" /etc/rc.local \
			/usr/sbin/i2cdetect -y 1 | grep -q "60: 60" && /usr/local/sbin/cloudshell2-support.sh' /usr/lib/armbian/armbian-firstrun
			;;
		bananapim3)
			HMP_Fix='; taskset -c -p 4-7 $i '
			;;
		edge*|ficus|firefly-rk3399|nanopct4|nanopim4|nanopineo4|renegade-elite|roc-rk3399-pc|rockpro64|station-p1)
			HMP_Fix='; taskset -c -p 4-5 $i '
			;;
	esac
	echo "* * * * * root for i in \`pgrep \"ftpd|nfsiod|smbd|afpd|cnid\"\` ; do ionice -c1 -p \$i ${HMP_Fix}; done >/dev/null 2>&1" \
		>/etc/cron.d/make_nas_processes_faster
	chmod 600 /etc/cron.d/make_nas_processes_faster

	# add SATA port multiplier hint if appropriate
	[ "${LINUXFAMILY}" = "sunxi" ] && \
		echo -e "#\n# If you want to use a SATA PM add \"ahci_sunxi.enable_pmp=1\" to bootargs above" \
		>>/boot/boot.cmd

	# Filter out some log messages
	echo ':msg, contains, "do ionice -c1" ~' >/etc/rsyslog.d/omv-armbian.conf
	echo ':msg, contains, "action " ~' >>/etc/rsyslog.d/omv-armbian.conf
	echo ':msg, contains, "netsnmp_assert" ~' >>/etc/rsyslog.d/omv-armbian.conf
	echo ':msg, contains, "Failed to initiate sched scan" ~' >>/etc/rsyslog.d/omv-armbian.conf

	# Fix little python bug upstream Debian 9 obviously ignores
	if [ -f /usr/lib/python3.5/weakref.py ]; then
		wget -O /usr/lib/python3.5/weakref.py \
		https://raw.githubusercontent.com/python/cpython/9cd7e17640a49635d1c1f8c2989578a8fc2c1de6/Lib/weakref.py
	fi

	# clean up and force password change on first boot
	umount /proc/mdstat
	chage -d 0 root
} # InstallOpenMediaVault

UnattendedStorageBenchmark() {
	# Function to create Armbian images ready for unattended storage performance testing.
	# Useful to use the same OS image with a bunch of different SD cards or eMMC modules
	# to test for performance differences without wasting too much time.

	rm /root/.not_logged_in_yet

	apt-get -qq install time

	wget -qO /usr/local/bin/sd-card-bench.sh https://raw.githubusercontent.com/ThomasKaiser/sbc-bench/master/sd-card-bench.sh
	chmod 755 /usr/local/bin/sd-card-bench.sh

	sed -i '/^exit\ 0$/i \
	/usr/local/bin/sd-card-bench.sh &' /etc/rc.local
} # UnattendedStorageBenchmark

InstallAdvancedDesktop()
{
	apt-get install -yy transmission libreoffice libreoffice-style-tango meld remmina thunderbird kazam avahi-daemon
	[[ -f /usr/share/doc/avahi-daemon/examples/sftp-ssh.service ]] && cp /usr/share/doc/avahi-daemon/examples/sftp-ssh.service /etc/avahi/services/
	[[ -f /usr/share/doc/avahi-daemon/examples/ssh.service ]] && cp /usr/share/doc/avahi-daemon/examples/ssh.service /etc/avahi/services/
	apt clean
} # InstallAdvancedDesktop

Main "$@"
