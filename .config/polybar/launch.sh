# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar

# Launch the example bar
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1);do
        MONITOR=$m polybar --reload top &
        MONITOR=$m polybar --reload bottom &
    done
else
    polybar --reload top &
    polybar --reload bottom &
fi

