::python -m esptool --chip esp8266 --baud 921600 erase_flash
python -m esptool --chip esp8266 --baud 921600 write_flash --flash_size detect 0x0 firmware.bin
python -m esptool --chip esp8266 --baud 921600 write_flash --flash_size detect 0x300000 presets.bin
::python -m esptool --chip esp8266 read_mac | findstr "MAC"
pause