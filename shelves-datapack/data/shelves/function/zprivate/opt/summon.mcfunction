summon hopper_minecart ~ ~ ~ {CustomDisplayTile:1b,Enabled:0b,TransferCooldown:0,Tags:["shelves.minecart","shelves.id.temp"],DisplayState:{Name:"minecraft:air"}}
data modify storage shelves:macro temp.string set from entity @n[type=marker,tag=shelves.minecart.marker,predicate=shelves:id/common] data.Name
execute as @n[type=hopper_minecart,tag=shelves.id.temp] run function shelves:zprivate/rename/apply2 with storage shelves:macro temp

scoreboard players operation @n[tag=shelves.id.temp] shelves.id = @s shelves.id
ride @n[type=hopper_minecart,tag=shelves.id.temp] mount @n[tag=shelves.minecart.vehicle,predicate=shelves:id/common]
data modify entity @n[type=hopper_minecart,predicate=shelves:id/common] Items set from entity @n[tag=shelves.minecart.marker,type=marker] data.Items
tag @e remove shelves.id.temp