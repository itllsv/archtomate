#!/usr/bin/env bash


# defaut browser
xdg-settings set default-web-browser google-chrome.desktop
xdg-mime default google-chrome.desktop x-scheme-handler/http
xdg-mime default google-chrome.desktop x-scheme-handler/https

# images
xdg-mime default google-chrome.desktop image/png
xdg-mime default google-chrome.desktop image/jpeg
xdg-mime default google-chrome.desktop image/gif
xdg-mime default google-chrome.desktop image/webp
xdg-mime default google-chrome.desktop image/bmp
xdg-mime default google-chrome.desktop image/tiff
xdg-mime default google-chrome.desktop image/svg+xml
xdg-mime default google-chrome.desktop image/x-icon

# pdf
xdg-mime default google-chrome.desktop application/pdf

# videos
xdg-mime default vlc.desktop video/mp4
xdg-mime default vlc.desktop video/x-msvideo
xdg-mime default vlc.desktop video/x-matroska
xdg-mime default vlc.desktop video/x-flv
xdg-mime default vlc.desktop video/x-ms-wmv
xdg-mime default vlc.desktop video/mpeg
xdg-mime default vlc.desktop video/ogg
xdg-mime default vlc.desktop video/webm
xdg-mime default vlc.desktop video/quicktime
xdg-mime default vlc.desktop video/3gpp
xdg-mime default vlc.desktop video/3gpp2
xdg-mime default vlc.desktop video/x-ms-asf
xdg-mime default vlc.desktop video/x-ogm+ogg
xdg-mime default vlc.desktop video/x-theora+ogg
xdg-mime default vlc.desktop video/mp2t
xdg-mime default vlc.desktop video/x-mng
xdg-mime default vlc.desktop video/x-ms-vob
