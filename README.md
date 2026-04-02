# Conky Set Status

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
