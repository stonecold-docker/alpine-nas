#!/bin/sh

exec smbd -F -S --no-process-group -s=/conf.d/samba/smb.conf

