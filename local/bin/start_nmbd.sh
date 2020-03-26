#!/bin/sh

exec nmbd -F -S --no-process-group -s=/conf.d/samba/smb.conf

