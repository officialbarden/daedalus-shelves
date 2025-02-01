scoreboard players reset @s shelves-Convert
scoreboard players enable @s shelves-Convert

execute if items entity @s weapon.mainhand #shelves:registered run return run function shelves:zprivate/convert/set_data with entity @s SelectedItem
execute unless items entity @s weapon.mainhand #shelves:registered run return run function shelves:zprivate/convert/fail