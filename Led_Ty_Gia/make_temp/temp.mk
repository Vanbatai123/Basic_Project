all:
	sdcc -c include.c
	sdcc -c N76_uart0.c
	sdcc -c N76_DS1307.c
	sdcc -c N76_Max7219_595.c
	sdcc -c N76_Flash.c
	sdcc N76_LedTyGia.c include.rel N76_uart0.rel N76_Max7219_595.rel N76_DS1307.rel  N76_Flash.rel 
	c:\srec_cat.exe -Disable_Sequence_Warnings  N76_LedTyGia.ihx -Intel -Output_Block_Size=16  -o N76_LedTyGia.hex -Intel
	objcopy -I ihex N76_LedTyGia.hex -O binary N76_LedTyGia.bin		