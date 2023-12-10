FILE=$1

nasm -f elf32 $FILE.asm -o $FILE.o \
&& ld -m elf_i386 $FILE.o -o $FILE \
&& rm -f *.o \
&& ./$FILE
