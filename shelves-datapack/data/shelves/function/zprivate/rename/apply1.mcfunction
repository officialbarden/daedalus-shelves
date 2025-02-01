scoreboard players operation #temp shelves.id = @s shelves.id

$data modify storage shelves:macro temp.string set from entity @s Items[{id:"$(id)"}].components."minecraft:writable_book_content".pages[0].raw
function shelves:zprivate/rename/apply2 with storage shelves:macro temp
data modify entity @n[type=marker,tag=shelves.minecart.marker,predicate=shelves:id/common] data.Name set from entity @s CustomName
data remove entity @s Items[{components:{"minecraft:custom_data":{shelves_renamer:true}}}]

particle totem_of_undying ~ ~ ~ 0.1 0.1 0.1 0.4 100 force
