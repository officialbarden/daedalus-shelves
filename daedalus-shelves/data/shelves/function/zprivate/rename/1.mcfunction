$data modify storage shelves:macro temp.string set from entity @s Items[{id:"$(id)"}].components."minecraft:writable_book_content".pages[0].raw
function shelves:zprivate/rename/2 with storage shelves:macro temp
data remove entity @s Items[{components:{"minecraft:custom_data":{daedalus_shelf_namer:true}}}]

particle totem_of_undying ~ ~ ~ 0.1 0.1 0.1 0.4 100 force
