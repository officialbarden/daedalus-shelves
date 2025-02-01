scoreboard players operation #temp shelves.id = @s shelves.id
execute store success score .SHELF_UPDATE_TEST shelves.values run data modify entity @n[tag=shelves.minecart.marker,predicate=shelves:id/common] data.Items set from entity @s Items

#> Run Update:
execute if score .SHELF_UPDATE_TEST shelves.values matches 1 if block ~ ~ ~ #stairs run return run function shelves:zprivate/update/stairs/apply
execute if score .SHELF_UPDATE_TEST shelves.values matches 1 if block ~ ~ ~ chiseled_bookshelf run return run function shelves:zprivate/update/chiseled_bookshelf/apply
#> Don't Update:
execute unless score .SHELF_UPDATE_TEST shelves.values matches 0 run return fail

