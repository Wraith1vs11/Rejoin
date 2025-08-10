#!/bin/bash
cd
if [ -e "/data/data/com.termux/files/home/storage" ]; then
	rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
yes | pkg update
. <(curl https://raw.githubusercontent.com/Wraith1vs11/Rejoin/refs/heads/main/termux-change-repo.sh)
yes | pkg upgrade
yes | pkg i python
yes | pkg i python-pip
pip install requests prettytable pycryptodome
if [ "$(uname -m)" = "aarch64" ]; then
    curl "https://raw.githubusercontent.com/Wraith1vs11/Rejoin/refs/heads/main/setup.so" > ~/setup
    chmod 755 ~/setup
    yes | ~/setup
fi
curl -Ls "https://raw.githubusercontent.com/Wraith1vs11/Rejoin/refs/heads/main/Rejoin.py" -o /sdcard/Download/Rejoin.py
if ! command -v su >/dev/null 2>&1 || ! su -c 'exit' >/dev/null 2>&1; then
    exit
fi
