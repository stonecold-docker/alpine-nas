#!/bin/sh

exec smbd -F --no-process-group -s=/conf.d/samba/smb.conf

