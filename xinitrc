if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi
xbindkeys
exec i3
