#!/bin/bash


#---- VLC ----
#Source: https://www.videolan.org/vlc/download-suse.html
zypper ar https://download.videolan.org/pub/vlc/SuSE/15.0 VLC
zypper mr -r VLC
zypper -n in vlc


