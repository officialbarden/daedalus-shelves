scoreboard objectives add shelves.id dummy
scoreboard objectives add shelves.values dummy
scoreboard objectives add shelves.place minecraft.used:minecraft.allay_spawn_egg


scoreboard objectives add shelves-Convert trigger
scoreboard players enable @a[gamemode=creative] shelves-Convert

tellraw @a ["",{"text":"[Daedalus Shelves]","bold":true,"color":"#428CFF"},{"text":" Datapack Loaded.","color":"gold"}]
