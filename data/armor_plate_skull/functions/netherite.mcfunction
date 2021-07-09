# Overwrite Enchantments from armor
data modify entity @s Item.tag.Enchantments set from entity @e[predicate=armor_plate_skull:netherite_helmet,distance=..1,limit=1] Item.tag.Enchantments

# Remove Ingredients
kill @e[predicate=armor_plate_skull:netherite_helmet,distance=..1,limit=1]

# Modify Item
data merge entity @s {Motion: [0.0d,0.3d,0.0d],Item: {tag: {AttributeModifiers: [{AttributeName: "generic.armor",Name: "generic.armor",Slot: "head",Amount: 3,Operation: 0,UUID: [I;800210198,-1697495592,-1738045617,-478974717]},{AttributeName: "generic.armor_toughness",Name: "generic.armor_toughness",Slot: "head",Amount: 3,Operation: 0,UUID: [I;1270728353,1633043027,-1803207343,-1628135982]},{AttributeName: "generic.knockback_resistance",Name: "generic.knockback_resistance",Slot: "head",Amount: 0.1,Operation: 0,UUID: [I;-1788429901,829309159,-1459648108,234703205]}], isNetherite: 1b,isPlated: 1b,Plate: "netherite" }}}
data modify entity @s Item.tag.display.Lore append value "{\"text\":\"Netherite Plated\",\"color\":\"gray\",\"italic\":false}"

# Special Effects
playsound minecraft:block.enchantment_table.use block @a[distance=..6] ~ ~ ~ 1 1
playsound minecraft:block.anvil.use block @a[distance=..6] ~ ~ ~ 1 1
particle minecraft:poof ~ ~ ~
