execute if entity @p[distance=6..] run data remove entity @n[type=hopper_minecart,tag=daedalus-shelf.menu,distance=..1] Items
execute if entity @p[distance=6..] run return run kill @n[type=hopper_minecart,tag=daedalus-shelf.menu,distance=..1]
execute if entity @p[distance=6..] run return run kill @n[type=hopper_minecart,tag=daedalus-shelf.menu.vehicle,distance=..1]

execute if entity @p[distance=..5] unless entity @n[type=hopper_minecart,distance=..0.5,tag=daedalus-shelf.menu] run return run function shelves:zprivate/place/essentials
