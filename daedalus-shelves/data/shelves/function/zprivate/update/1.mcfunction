
execute positioned ~ ~-1 ~ if block ~ ~ ~ #stairs[facing=north] run function shelves:zprivate/display_offset/stairs/north
execute positioned ~ ~-1 ~ if block ~ ~ ~ #stairs[facing=south] run function shelves:zprivate/display_offset/stairs/south
execute positioned ~ ~-1 ~ if block ~ ~ ~ #stairs[facing=east] run function shelves:zprivate/display_offset/stairs/east
execute positioned ~ ~-1 ~ if block ~ ~ ~ #stairs[facing=west] run function shelves:zprivate/display_offset/stairs/west


execute unless data entity @s Items[{Slot:0b}] run data remove entity @n[tag=daedalus-shelf.item.slot,tag=slot.1,distance=..1] item
execute unless data entity @s Items[{Slot:1b}] run data remove entity @n[tag=daedalus-shelf.item.slot,tag=slot.2,distance=..1] item
execute unless data entity @s Items[{Slot:2b}] run data remove entity @n[tag=daedalus-shelf.item.slot,tag=slot.3,distance=..1] item
execute unless data entity @s Items[{Slot:3b}] run data remove entity @n[tag=daedalus-shelf.item.slot,tag=slot.4,distance=..1] item
execute unless data entity @s Items[{Slot:4b}] run data remove entity @n[tag=daedalus-shelf.item.slot,tag=slot.5,distance=..1] item

data modify entity @n[tag=daedalus-shelf.item.slot,tag=slot.1] item set from entity @s Items[{Slot:0b}]
data modify entity @n[tag=daedalus-shelf.item.slot,tag=slot.2] item set from entity @s Items[{Slot:1b}]
data modify entity @n[tag=daedalus-shelf.item.slot,tag=slot.3] item set from entity @s Items[{Slot:2b}]
data modify entity @n[tag=daedalus-shelf.item.slot,tag=slot.4] item set from entity @s Items[{Slot:3b}]
data modify entity @n[tag=daedalus-shelf.item.slot,tag=slot.5] item set from entity @s Items[{Slot:4b}]

execute as @e[tag=daedalus-shelf.item.slot] unless data entity @s item run kill @s

execute as @e[tag=daedalus-shelf.item.slot,distance=..1] at @s store result score .random_rot daedalus.shelf run random value 0..360
# Random Rotation for realism.
execute as @e[tag=daedalus-shelf.item.slot,distance=..1] store result entity @s Rotation[0] float 1 run scoreboard players get .random_rot daedalus.shelf

function shelves:zprivate/update/3
