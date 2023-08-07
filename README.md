# operating system bootloader
 one and the first step of building own operating system.  *check out comments  in the code*
 ### How to run
 - Assembler: nasm - available for Windows and Linux  or other assemblers
- Virtual Machine: qemu - available for Windows and Linux or other VMs
- optional: vim as an editor 
#### Linux
- [x] Download nasm using  ` apt-get install nasm` and for qemu ` apt-get install qeum` 
- [x] Make iso file: ` nasm -f bin k.asm -o k.iso `
- [x] Run with VM: ` qemu-system-x86_64 k.iso `
