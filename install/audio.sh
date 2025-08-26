#!/usr/bin/env bash


# native pipewire: Modern stuff like OBS, WebRTC, Streaming
# pipewire-pulse: PulseAudio - Browser, players, discord, etc
# pipewire-alsa: ALSA - old stuff, retro games
# pipewire-jack: DAWs, professional stuff
# wireplumber: Manage sessions, device setup, etc
# wiremix: TUI audio mixer for PipeWire
# pamixer: Volume control

paru -S --needed --noconfirm \
	pipewire-pulse \
	pipewire-alsa \
	pipewire-jack \
	wireplumber \
	wiremix \
	pamixer
