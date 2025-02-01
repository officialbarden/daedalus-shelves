execute as @a[scores={shelves-Convert=1..}] at @s run function shelves:convert

#> Detect Placing
execute as @a[scores={shelves.place=1..}] at @s unless entity @n[type=marker,tag=shelves.summon] run scoreboard players reset @s shelves.place
execute as @a[scores={shelves.place=1..}] at @s if entity @n[type=marker,tag=shelves.summon] run function shelves:zprivate/place/get_rotation

#> update item_display:
execute as @e[tag=shelves.minecart] at @s run function shelves:zprivate/update/main

#> Kill entities if No Shelf-Block
execute as @e[tag=shelves.minecart.vehicle] at @s run function shelves:zprivate/kill/check