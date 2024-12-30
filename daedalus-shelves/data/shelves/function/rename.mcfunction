give @s writable_book[item_name='"Shelf Namer"',custom_data={daedalus_shelf_namer:true}]
tellraw @s {"text": "[daedalus-shelves] Put the new name in the book and put the book in the shelf.","color": "gray"}
scoreboard players reset @a shelves-Renamer