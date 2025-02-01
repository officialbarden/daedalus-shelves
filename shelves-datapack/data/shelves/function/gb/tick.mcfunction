execute as @a[scores={shelves-Convert=1..}] at @s run function shelves:convert
execute as @a[scores={shelves-Rename=1..}] at @s run function shelves:zprivate/rename/1

#> Detect Placing
execute as @a[scores={shelves.place=1..}] at @s unless entity @n[type=marker,tag=shelves.summon] run scoreboard players reset @s shelves.place
execute as @a[scores={shelves.place=1..}] at @s if entity @n[type=marker,tag=shelves.summon] run function shelves:zprivate/place/get_rotation

#> Rename:
execute as @e[tag=shelves.minecart,type=hopper_minecart] at @s if items entity @s container.* *[custom_data={shelves_renamer:true}] run function shelves:zprivate/rename/apply1 with entity @s Items[{components:{"minecraft:custom_data":{shelves_renamer:true}}}]

#> update item_display:
execute as @e[tag=shelves.minecart] at @s run function shelves:zprivate/update/main

# Optimizing/Killing Minecarts
execute as @e[tag=shelves.minecart.vehicle] at @s run function shelves:zprivate/opt/main

#> Kill entities if No Shelf-Block
execute as @e[tag=shelves.minecart.vehicle] at @s run function shelves:zprivate/kill/check
