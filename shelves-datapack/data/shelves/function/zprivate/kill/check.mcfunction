scoreboard players operation #temp shelves.id = @s shelves.id
execute if block ~ ~ ~ #shelves:registered run return fail
execute unless block ~ ~ ~ #shelves:registered run kill @e[predicate=shelves:id/common]