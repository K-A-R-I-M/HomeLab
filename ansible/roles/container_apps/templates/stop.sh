#!/bin/bash

/usr/bin/podman stop {{ item.name }} || true
