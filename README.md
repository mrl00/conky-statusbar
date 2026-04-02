# Conky Set Status

[![C/C++ CI](https://github.com/mrl00/conky-statusbar/actions/workflows/c-cpp.yml/badge.svg)](https://github.com/mrl00/conky-statusbar/actions/workflows/c-cpp.yml)

Sets the dwm status bar using Conky system monitoring output.

## How It Works

1. Conky outputs system stats to the console
2. `dwm_setstatus` reads from stdin and sets the X root window name via `XStoreName`
3. dwm reads the root window name and displays it as the status bar

```
conky -c .conkyrc | dwm_setstatus
```

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

## Configuration

Edit `.conkyrc` to customize displayed metrics. Default output:

```
CPU% :: MEM% (MEM) :: DOWN | UP :: vol VOL% :: TIME
```

**Note:** The network interface (`enp4s0`) is hardware-specific. Update it to match your system:

```sh
ip link show
```
