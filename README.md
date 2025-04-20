# kde_connect_modifiers
This is a tiny repository containing an autohotkey script to enable using shift/ctrl/alt/tab with KDE Connect on Windows.

I personally had a need for this as I wanted to code on my PC using my phone as a keyboard but I didn't want to use any proprietary non-opensored solutions. KDE Connect was perfect for this, but it has an issue in that all the keys it sends are virtual scan keys of some sort, and before it sends modifiers (at least on Windows), it sends some other keystrokes which interfere with terminal programs like Vim.

This script solves this by turning F7, F8 and F9 into keys which queue up the modifiers control shift or alt (F10 is currently used for tab because that also had an issue). The way they work is that after you press e.g. F9, if you press another key within a second or so, that key will be combined with the CTRL key. Because this modifier key combination will be sent from Autobotkin instead of KD Connect, Terminal programs like Vim won't have an issue with it. 
