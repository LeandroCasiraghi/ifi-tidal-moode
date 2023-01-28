#!/bin/bash

export LD_LIBRARY_PATH=$PWD/lib
./bin/tidal_connect_application \
	--tc-certificate-path "./id_certificate/IfiAudio_ZenStream.dat" \
	--netif-for-deviceid eth0 \
	-f "Moode Streamer" \
	--codec-mpegh true \
	--codec-mqa true \
	--model-name "iFi Streamer" \
	--disable-app-security false \
	--disable-web-security false \
	--enable-mqa-passthrough true \
	--playback-device "iFi (by AMR) HD USB Audio: - (hw:2,0)" \
	--log-level 1
