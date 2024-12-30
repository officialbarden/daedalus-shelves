$setblock ~ ~ ~ $(id)[facing=$(facing)]
function shelves:zprivate/place/essentials

execute if block ~ ~ ~ #stairs[facing=north] run function shelves:zprivate/display_offset/stairs/north
execute if block ~ ~ ~ #stairs[facing=south] run function shelves:zprivate/display_offset/stairs/south
execute if block ~ ~ ~ #stairs[facing=east] run function shelves:zprivate/display_offset/stairs/east
execute if block ~ ~ ~ #stairs[facing=west] run function shelves:zprivate/display_offset/stairs/west
