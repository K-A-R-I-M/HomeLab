#!/bin/bash

podman run \
--name nextcloud \
-p 8080:80 \
-v {{ nextcloud.paths.data }}:/var/www/html \
{{ nextcloud.image }}