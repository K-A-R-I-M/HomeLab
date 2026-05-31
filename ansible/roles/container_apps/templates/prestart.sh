#!/bin/bash

/usr/bin/podman rm {{ item.name }} || true
/bin/sleep {{ item.delay }}
/bin/bash -c "/usr/bin/podman network create {{ item.network_dns }}  {{ item.network }} || true"
