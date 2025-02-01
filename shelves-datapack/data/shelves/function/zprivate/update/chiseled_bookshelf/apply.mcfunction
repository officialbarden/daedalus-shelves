kill @e[tag=shelf.item.slot,predicate=shelves:id/common]

execute if block ~ ~ ~ chiseled_bookshelf[facing=north] run function shelves:zprivate/place/spawn_entities/chiseled_bookshelf/north
execute if block ~ ~ ~ chiseled_bookshelf[facing=south] run function shelves:zprivate/place/spawn_entities/chiseled_bookshelf/south
execute if block ~ ~ ~ chiseled_bookshelf[facing=east] run function shelves:zprivate/place/spawn_entities/chiseled_bookshelf/east
execute if block ~ ~ ~ chiseled_bookshelf[facing=west] run function shelves:zprivate/place/spawn_entities/chiseled_bookshelf/west
scoreboard players operation @e[tag=shelves.id.temp] shelves.id = @s shelves.id
tag @e remove shelves.id.temp


data modify entity @n[type=item_display,tag=shelf.item.slot,tag=slot.1,predicate=shelves:id/common] item set from entity @s Items[{Slot:0b}]
data modify entity @n[type=item_display,tag=shelf.item.slot,tag=slot.2,predicate=shelves:id/common] item set from entity @s Items[{Slot:1b}]
data modify entity @n[type=item_display,tag=shelf.item.slot,tag=slot.3,predicate=shelves:id/common] item set from entity @s Items[{Slot:2b}]
data modify entity @n[type=item_display,tag=shelf.item.slot,tag=slot.4,predicate=shelves:id/common] item set from entity @s Items[{Slot:3b}]
data modify entity @n[type=item_display,tag=shelf.item.slot,tag=slot.5,predicate=shelves:id/common] item set from entity @s Items[{Slot:4b}]

execute as @e[tag=shelf.item.slot,predicate=shelves:id/common] unless data entity @s item run kill @s

execute as @e[tag=shelf.item.slot,predicate=shelves:id/common] run function shelves:zprivate/update/rotation