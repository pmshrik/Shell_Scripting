#!/bin/bash
SRC="/etc"
DEST="/backup/etc-$(date +%F).tar.gz"
tar -czf $DEST $SRC
echo "Backup created at $DEST"
