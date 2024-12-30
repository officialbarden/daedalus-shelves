summon marker ~ ~ ~ {Tags:['daedalus-shelf.menu.marker','shelf-temp']}

execute if block ~ ~ ~ #stairs run summon marker ~ ~ ~ {Tags:['daedalus-shelf.menu.marker']}
execute if block ~ ~ ~ #stairs run summon item_display ~ ~ ~ {Tags:["daedalus-shelf.menu.vehicle"]}
execute if block ~ ~ ~ #stairs run summon hopper_minecart ~ ~ ~ {Silent:1b,Enabled:0b,TransferCooldown:0,NoGravity:true,CustomDisplayTile:true,DisplayState:{Name:"air"},Tags:['daedalus-shelf.menu','daedalus-st'],CustomName:'"Shelf"',CustomNameVisible:false}
execute if block ~ ~ ~ #stairs run tag @e[tag=shelf-temp] add daedalus-st

data modify entity @n[type=hopper_minecart,tag=daedalus-shelf.menu] Items set from entity @n[type=marker,tag=daedalus-shelf.menu.marker] data.Items
data modify entity @n[type=hopper_minecart,tag=daedalus-shelf.menu] CustomName set from entity @n[type=marker,tag=daedalus-shelf.menu.marker] data.CustomName
ride @n[tag=daedalus-shelf.menu] mount @n[tag=daedalus-shelf.menu.vehicle]
team join shelf-noname @n[tag=daedalus-shelf.menu]

tag @e remove shelf-temp