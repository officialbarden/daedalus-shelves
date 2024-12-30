execute store result score .x daedalus.shelf.place run data get entity @s Rotation[0] 10

# 450 to 1350: west
execute if score .x daedalus.shelf.place matches 450..1350 run data modify storage shelves:macro temp.facing set value "west"
# 1351 to 1790: north
execute if score .x daedalus.shelf.place matches 1351..1790 run data modify storage shelves:macro temp.facing set value "north"
# -1790 to -1351: north
execute if score .x daedalus.shelf.place matches -1790..-1351 run data modify storage shelves:macro temp.facing set value "north"
# -1340 to -450: east
execute if score .x daedalus.shelf.place matches -1340..-450 run data modify storage shelves:macro temp.facing set value "east"
# -449 to 449: south
execute if score .x daedalus.shelf.place matches -499..499 run data modify storage shelves:macro temp.facing set value "south"

data modify storage shelves:macro temp.id set from entity @n[type=marker,tag=daedalus-shelf.spawn] data.shelf_id
execute as @n[type=marker,tag=daedalus-shelf.spawn] at @s run function shelves:zprivate/place/1 with storage shelves:macro temp
kill @e[tag=daedalus-shelf.spawn]
