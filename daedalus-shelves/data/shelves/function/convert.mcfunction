#> If not holding stairs:
execute \
    unless items entity @s weapon.mainhand #shelves:shelves \
    run return run tellraw @s {"text":"[daedalus-shelves] No 'shelf-able' item found equipped in mainhand! Equip a valid item in your mainhand and try again!","color": "red"}

#> Convert hand-item into special "shelf" item.
execute \
    if items entity @s weapon.mainhand #stairs \
    run title @s actionbar "Hand Item converted to Shelf!"
function shelves:zprivate/convert/1 with entity @s SelectedItem

scoreboard players reset @a shelves-Convert