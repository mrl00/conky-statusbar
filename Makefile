CC = gcc
CFLAGS = -Wall -Wextra -O2
LDFLAGS = -lX11
TARGET = dwm_setstatus
PREFIX = /usr

all: $(TARGET)

$(TARGET): dwm_setstatus.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

install: $(TARGET)
	install -Dm755 $(TARGET) $(DESTDIR)$(PREFIX)/bin/$(TARGET)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: all install uninstall clean
