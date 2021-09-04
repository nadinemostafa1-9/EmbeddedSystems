#@Copyright : Nadine
compiler = arm-none-eabi-
CFLAGS = -mcpu=arm926ej-s
INCS = -I .
LIBS = 
SRC = $(wildcard *.c) # anything  .c
OBJ = $(SRC:.c=.o)    # replace .c with .o 
As = $(wildcard *.s) 
AsOBJ = $(As:.s=.o)   
proj_name = learn
all: $(proj_name).bin
	@echo "Build is done"

%.o: %.s
	$(compiler)as.exe  $(CFLAGS) $< -o $@

%.o: %.c
	$(compiler)gcc.exe -c $(INCS)  $(CFLAGS) $< -o $@

$(proj_name).elf: $(OBJ) $(AsOBJ)
	$(compiler)ld.exe -T linker_script.ld $(LIBS) $(OBJ) $(AsOBJ) -o $@ -Map=Map_file.map


$(proj_name).bin: $(proj_name).elf
	$(compiler)objcopy.exe -O binary $< $@	

clean_all: 
	rm *.o *.elf *.bin

clean:
	rm *.elf *.bin