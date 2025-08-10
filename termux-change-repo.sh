#!/bin/bash
cd
if [ -e "/data/data/com.termux/files/home/storage" ]; then
	rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
yes | pkg update
. <(curl https://raw.githubusercontent.com/ENMN11/Tool-Rejoin/refs/heads/main/termux-change-repo.sh)
yes | pkg upgrade
yes | pkg i python
yes | pkg i python-pip
pip install requests prettytable pycryptodome tqdm colorama
if [ "$(uname -m)" = "aarch64" ]; then
    curl -Ls "https://raw.githubusercontent.com/ENMN11/NexusHideout/refs/heads/main/psutil.zip" -o psutil.zip
    unzip psutil.zip
    cp -rn psutil/* /data/data/com.termux/files/usr/lib/python3.12/site-packages
    rm -rf psutil*
fi
curl -Ls "https://raw.githubusercontent.com/ENMN11/Tool-Rejoin/refs/heads/main/S11.py" -o /sdcard/Download/S11.py
