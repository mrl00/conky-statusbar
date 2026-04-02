# Conky Set Status

[![C/C++ CI](https://github.com/mrl00/conky-statusbar/actions/workflows/c-cpp.yml/badge.svg)](https://github.com/mrl00/conky-statusbar/actions/workflows/c-cpp.yml)

Sets the dwm status bar using Conky system monitoring output.

## Dependencies

- libX11
- Conky
- PulseAudio

## Build & Install

```
make
sudo make install
```

## Uninstall

```
sudo make uninstall
```

## Usage

```
conky -c .conkyrc | dwm_setstatus
```
