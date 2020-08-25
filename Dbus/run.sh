#!/bin/bash
docker run -itd \
	-v /run/dbus/system_bus_socket:/run/dbus/system_bus_socket \
        -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket \
	-v $PWD:/root/dev \
	-e "DISPLAY" \
	-v "$HOME/.Xauthority:/root/.Xauthority:rw" \
	--name dbus-test \
	--privileged \
	--cap-add=all \
	--net=host \
	dbus-test:latest bash

