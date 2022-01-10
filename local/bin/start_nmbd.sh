#!/bin/sh

exec nmbd -F --no-process-group -s=/conf.d/samba/smb.conf

