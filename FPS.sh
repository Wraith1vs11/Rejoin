#!/bin/bash
if [ -e "/data/data/com.termux/files/home/storage" ]; then
	rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
yes | pkg update
. <(curl https://raw.githubusercontent.com/u400822/setup-termux/refs/heads/main/termux-change-repo.sh)
yes | pkg upgrade
yes | pkg i python
yes | pkg i python-pip
pip install colorama
curl -Ls "https://raw.githubusercontent.com/Wraith1vs11/Rejoin/refs/heads/main/FPS.py" -o /sdcard/Download/FPS.py
