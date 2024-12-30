
execute as @e[tag=daedalus-shelf.item.slot] at @s unless block ~ ~ ~ #shelves:shelf_block run kill @s
execute as @e[tag=daedalus-shelf.menu] at @s unless block ~ ~ ~ #shelves:shelf_block run kill @s
execute as @e[tag=daedalus-shelf.menu.vehicle] at @s unless block ~ ~ ~ #shelves:shelf_block run kill @s
execute as @e[tag=daedalus-shelf.menu.marker] at @s unless block ~ ~ ~ #shelves:shelf_block run kill @s
execute as @e[tag=daedalus-shelf.item.slot] at @s unless data entity @s item run kill @s
execute as @e[tag=daedalus-shelf.item.slot] at @s if block ~ ~ ~ #stairs run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}
