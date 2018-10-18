add-auto-load-safe-path /home/vagrant/current_progress/ctf/picoctf/reversing/quackme/.gdbinit



define skip
    tbreak +1
    jump +1
end
