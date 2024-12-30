execute as @n[tag=daedalus-shelf.item.slot,distance=..1] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}

execute as @n[tag=daedalus-shelf.item.slot,distance=..1] at @s store result score .state daedalus.shelf run random value 0..1

# 0 - Object laying down
# 1 - Object upright.
execute as @n[tag=daedalus-shelf.item.slot,distance=..1] if score .state daedalus.shelf matches 0 run data modify entity @s Rotation[1] set value 0f
execute as @n[tag=daedalus-shelf.item.slot,distance=..1] if score .state daedalus.shelf matches 1 run data modify entity @s Rotation[1] set value 90f
