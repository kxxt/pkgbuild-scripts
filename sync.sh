#!/bin/bash

dstserver="$1"
if [[ "$1" == "" ]]; then
    dstserver=brotherhood
fi

rsync -r --info=progress2 --info=name /var/lib/repo/kxxt/ "root@$dstserver:/srv/repo/kxxt/"
