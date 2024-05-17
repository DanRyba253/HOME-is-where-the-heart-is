#!/usr/bin/fish

swww-daemon --format xrgb &

while true;
    sleep 600
    set img (random choice $argv)
    swww img $img
end
    

