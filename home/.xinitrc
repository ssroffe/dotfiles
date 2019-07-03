if [ -f ~/.Xmodmap ]; then 
    xmodmap ~/.Xmodmap
fi
xsetroot -cursor_name left_ptr
exec bspwm

