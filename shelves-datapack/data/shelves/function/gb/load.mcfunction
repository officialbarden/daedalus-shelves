scoreboard objectives add shelves.id dummy
scoreboard objectives add shelves.values dummy
scoreboard objectives add shelves.place minecraft.used:minecraft.allay_spawn_egg

scoreboard objectives add shelves-Convert trigger
scoreboard objectives add shelves-Rename trigger
scoreboard players enable @a[gamemode=creative] shelves-Convert
scoreboard players enable @a[gamemode=creative] shelves-Rename

tellraw @a ["",{"text":"[Daedalus Shelves]","bold":true,"color":"#428CFF"},{"text":" Datapack Loaded.","color":"gold"}]
