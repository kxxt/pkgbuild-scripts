#!/bin/bash

dstserver="$1"
if [[ "$1" == "" ]]; then
    dstserver=colo
fi

rsync -r --info=progress2 --info=name /var/lib/repo/kxxt/ "$dstserver:linearch/kxxt/"