#!/usr/bin/python
import dbus
session_bus = dbus.SessionBus()
spotify_bus = session_bus.get_object(
    'org.mpris.MediaPlayer2.spotify',
    '/org/mpris/MediaPlayer2'
)
methods = dbus.Interface(spotify_bus,'org.mpris.MediaPlayer2.Player')
methods.PlayPause()
