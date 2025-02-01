summon hopper_minecart ~ ~ ~ {CustomDisplayTile:1b,Enabled:0b,TransferCooldown:0,Tags:["shelves.minecart","shelves.id.temp"],DisplayState:{Name:"minecraft:air"}}

scoreboard players operation @n[tag=shelves.id.temp] shelves.id = @s shelves.id
ride @n[type=hopper_minecart,tag=shelves.id.temp] mount @n[tag=shelves.minecart.vehicle,predicate=shelves:id/common]
data modify entity @n[type=hopper_minecart,predicate=shelves:id/common] Items set from entity @n[tag=shelves.minecart.marker,type=marker] data.Items