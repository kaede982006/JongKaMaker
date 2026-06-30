CC := gcc
TARGET := JongKaMaker.exe
SRC := JongKaMaker.c

CFLAGS := -O2 -Wall -Wextra -fno-builtin -finput-charset=UTF-8 -fexec-charset=UTF-8
LDFLAGS := -mwindows -nostdlib -Wl,-e,AppEntry -lkernel32 -luser32 -lgdi32

.PHONY: all run clean rebuild

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(SRC) -o $(TARGET) $(CFLAGS) $(LDFLAGS)

run: $(TARGET)
	.\$(TARGET)

clean:
	@if exist $(TARGET) del /Q $(TARGET)

rebuild: clean all
