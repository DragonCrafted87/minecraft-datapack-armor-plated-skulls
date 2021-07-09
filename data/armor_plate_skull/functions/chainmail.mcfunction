# Overwrite Enchantments from armor
data modify entity @s Item.tag.Enchantments set from entity @e[predicate=armor_plate_skull:chainmail_helmet,distance=..1,limit=1] Item.tag.Enchantments

# Remove Ingredients
kill @e[predicate=armor_plate_skull:chainmail_helmet,distance=..1,limit=1]

# Modify Item
data merge entity @s {Motion: [0.0d,0.3d,0.0d],Item: {tag: {AttributeModifiers: [{AttributeName: "generic.armor",Name: "generic.armor",Slot: "head",Amount: 2,Operation: 0,UUID: [I;-1336166702,-671658061,-1465011950,-1311835842]}], isPlated: 1b,Plate: "chainmail" }}}
data modify entity @s Item.tag.display.Lore append value "{\"text\":\"Chainmail Plated\",\"color\":\"gray\",\"italic\":false}"

# Special Effects
playsound minecraft:block.enchantment_table.use block @a[distance=..6] ~ ~ ~ 1 1
playsound minecraft:block.anvil.use block @a[distance=..6] ~ ~ ~ 1 1
particle minecraft:poof ~ ~ ~
