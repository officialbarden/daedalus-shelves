$setblock ~ ~ ~ $(id)[facing=$(facing)]

function shelves:zprivate/place/spawn_entities/main

scoreboard players operation @e[tag=shelves.id.temp] shelves.id = .global shelves.id
tag @e remove shelves.id.temp
scoreboard players add .global shelves.id 1