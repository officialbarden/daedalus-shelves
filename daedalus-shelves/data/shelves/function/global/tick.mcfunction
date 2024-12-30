scoreboard players enable @a[gamemode=creative] shelves-Convert
scoreboard players enable @a[gamemode=creative] shelves-Renamer
execute as @a[scores={shelves-Convert=1..}] run function shelves:convert
execute as @a[scores={shelves-Renamer=1..}] run function shelves:rename

execute as @a[scores={daedalus.shelf.place=1..}] if items entity @s weapon.mainhand glow_squid_spawn_egg[custom_data~{"daedalus_shelf":true}] run function shelves:zprivate/place/get_rotation/1

execute as @e[tag=daedalus-shelf.menu] at @s store success score @s daedalus.shelf run data modify entity @n[type=marker,tag=daedalus-shelf.menu.marker] data.Items set from entity @s Items
execute as @e[tag=daedalus-shelf.menu] at @s run data modify entity @n[type=marker,tag=daedalus-shelf.menu.marker] data.CustomName set from entity @n[type=hopper_minecart,tag=daedalus-shelf.menu] CustomName
execute as @e[tag=daedalus-shelf.menu] at @s positioned ~ ~1 ~ if score @s daedalus.shelf matches 1 run function shelves:zprivate/update/1
execute as @e[tag=daedalus-shelf.menu] at @s if items entity @s container.* *[custom_data={daedalus_shelf_namer:true}] run function shelves:zprivate/rename/1 with entity @s Items[{components:{"minecraft:custom_data":{daedalus_shelf_namer:true}}}]

#> Fix
execute as @e[tag=daedalus-shelf.menu.marker] at @s run function shelves:zprivate/player

scoreboard players set @a daedalus.shelf.place 0
function shelves:zprivate/kill


