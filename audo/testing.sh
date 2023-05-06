#! /bin/sh

sudo apt install pipewire-audio-client-libraries libspa-0.2-bluetooth libspa-0.2-jack wireplumber
systemctl --user --now enable wireplumber.service
