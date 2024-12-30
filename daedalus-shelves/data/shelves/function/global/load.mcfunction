scoreboard objectives add daedalus.shelf.place minecraft.used:minecraft.glow_squid_spawn_egg
scoreboard objectives add daedalus.shelf dummy

scoreboard objectives add shelves-Convert trigger
scoreboard objectives add shelves-Renamer trigger


team add shelf-noname "noname"
team modify shelf-noname nametagVisibility never
tellraw @a "[daedalus-shelves] Loaded."
