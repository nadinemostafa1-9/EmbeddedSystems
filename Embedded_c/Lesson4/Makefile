#@Copyright : Nadine
compiler = arm-none-eabi-
CFLAGS = -mcpu=cortex-m4 -gdwarf-2  # debug for cortex-m3 
INCS = -c -I .
LIBS = 
SRC = $(wildcard *.c) # anything  .c
OBJ = $(SRC:.c=.o) # replace .c with .o 
As = $(wildcard *.s) 
AsOBJ = $(As:.s=.o)   
proj_name = lab3_cortex-m4
all: $(proj_name).bin
	@echo "Build is done"

%.o: %.s
	$(compiler)as.exe $(CFLAGS) $< -o $@

%.o: %.c
	$(compiler)gcc.exe $(INCS) $(CFLAGS) $< -o $@

$(proj_name).elf: $(OBJ) $(AsOBJ)
	$(compiler)ld.exe -T linker_script.ld $(OBJ) $(AsOBJ) -o $@ -Map=Map_file.map 
    #cp $(proj_name).elf $(proj_name).axf

$(proj_name).bin: $(proj_name).elf
	$(compiler)objcopy.exe -O binary $< $@	

clean_all: 
	rm *.o *.elf *.bin

clean:
	rm *.elf *.bin

