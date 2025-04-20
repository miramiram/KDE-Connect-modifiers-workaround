# kde_connect_modifiers
This is a tiny repository containing an autohotkey script to enable using shift/ctrl/alt/tab with KDE Connect on Windows, a personal script I realized someone else out there migbt have use for.

This works best when you use KDE connect on an android phone with the keyboard app "Unexpected Keyboard" from F-Droid. This is an open source app which gives you access to all kinds of keys a PC uses, including the F* keys. 

I personally had a need for this as I wanted to code on my PC using my phone as a keyboard but I didn't want to use any proprietary non-opensored solutions. KDE Connect was perfect for this, but it has an issue in that all the keys it sends are virtual scan keys of some sort, and before it sends modifiers (at least on Windows), it sends some other keystrokes which interfere with terminal programs like Vim.

This script solves this by turning F7, F8 and F9 into keys which queue up the modifiers control shift or alt (F10 is currently used for tab because that also had an issue). The way they work is that after you press e.g. F9, if you press another key within a second or so, that key will be combined with the CTRL key. Because this modifier key combination will be sent from Autobotkin instead of KD Connect, Terminal programs like Vim won't have an issue with it. 

The reason this uses F10, F9, F8 and F7 is that there are a few other available keys that when sent from KDE Connect can be recognized by AutoHotKey. 
 
Another open source alternative to this is to use a remote desktop client like Moonlight/Apollo, which seems to handle modifier keys better. RustDesk may also do the trick.
