#!/usr/bin/fish

swww init --format xrgb

while true;
    sleep 600
    set img (random choice $argv)
    swww $img
end
    

