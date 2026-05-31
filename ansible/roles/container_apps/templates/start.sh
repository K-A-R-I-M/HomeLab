#!/bin/bash

/usr/bin/podman run \
    --pull {{ item.pull }} \
    --tls-verify={{ item.tls_verify }} \
    {{ item.env }} \
    {{ item.volume }} \
    --name {{ item.name }} \
    --network={{ item.network }} \
    {{ item.ports }} \
    {{ item.cap_add }} \
    --restart {{ item.restart }}  \
    {{ item.image }}
