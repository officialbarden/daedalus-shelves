scoreboard players operation #temp shelves.id = @s shelves.id
execute unless entity @p[distance=..5] if entity @n[tag=shelves.minecart,predicate=shelves:id/common] run return run function shelves:zprivate/opt/kill
execute if entity @p[distance=..5] unless entity @n[tag=shelves.minecart,predicate=shelves:id/common] run return run function shelves:zprivate/opt/summon
