execute align xyz run summon item_display ~0.25 ~0.6875 ~0.125 {Tags:["shelf.temp","daedalus-shelf.item.slot","slot.1"]}
execute align xyz run summon item_display ~0.25 ~0.6875 ~0.3125 {Tags:["shelf.temp","daedalus-shelf.item.slot","slot.2"]}
execute align xyz run summon item_display ~0.25 ~0.6875 ~0.5 {Tags:["shelf.temp","daedalus-shelf.item.slot","slot.3"]}
execute align xyz run summon item_display ~0.25 ~0.6875 ~0.6875 {Tags:["shelf.temp","daedalus-shelf.item.slot","slot.4"]}
execute align xyz run summon item_display ~0.25 ~0.6875 ~0.875 {Tags:["shelf.temp","daedalus-shelf.item.slot","slot.5"]}

execute as @e[tag=shelf.temp] run data modify entity @s Rotation set value [90f,0f]

tag @e remove shelf.temp