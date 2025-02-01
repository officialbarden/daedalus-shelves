execute store result entity @n[type=marker,tag=shelves.summon] Rotation[0] float 1 run data get entity @s Rotation[0]
execute store result score .X shelves.values run data get entity @n[type=marker,tag=shelves.summon] Rotation[0] 10

# 450 to 1350: west
execute as @n[type=marker,tag=shelves.summon] if score .X shelves.values matches 450..1350 run data modify entity @s data.block.facing set value "west"
# 1351 to 1790: north
execute as @n[type=marker,tag=shelves.summon] if score .X shelves.values matches 1351..1790 run data modify entity @s data.block.facing set value "north"
# -1790 to -1351: north
execute as @n[type=marker,tag=shelves.summon] if score .X shelves.values matches -1790..-1351 run data modify entity @s data.block.facing set value "north"
# -1340 to -450: east
execute as @n[type=marker,tag=shelves.summon] if score .X shelves.values matches -1340..-450 run data modify entity @s data.block.facing set value "east"
# -449 to 449: south
execute as @n[type=marker,tag=shelves.summon] if score .X shelves.values matches -499..499 run data modify entity @s data.block.facing set value "south"

execute as @n[type=marker,tag=shelves.summon] at @s align xyz positioned ~0.5 ~ ~0.5 run function shelves:zprivate/place/setblock with entity @n[type=marker,tag=shelves.summon] data.block
kill @e[tag=shelves.summon]