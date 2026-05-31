#!/bin/bash

/usr/bin/podman rm {{ item.name }} || true
