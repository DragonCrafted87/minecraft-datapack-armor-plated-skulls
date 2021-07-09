# Overwrite Enchantments from armor
data modify entity @s Item.tag.Enchantments set from entity @e[predicate=armor_plate_skull:diamond_helmet,distance=..1,limit=1] Item.tag.Enchantments

# Remove Ingredients
kill @e[predicate=armor_plate_skull:diamond_helmet,distance=..1,limit=1]

# Modify Item
data merge entity @s {Motion: [0.0d,0.3d,0.0d],Item: {tag: {AttributeModifiers: [{AttributeName: "generic.armor",Name: "generic.armor",Slot: "head",Amount: 3,Operation: 0,UUID: [I;871064713,-1369944800,-1348436021,2137941226]},{AttributeName: "generic.armor_toughness",Name: "generic.armor_toughness",Slot: "head",Amount: 2,Operation: 0,UUID: [I;-1336166702,-671658061,-1465011950,-1311835842]}],isPlated: 1b,Plate: "diamond"}}}
data modify entity @s Item.tag.display.Lore append value "{\"text\":\"Diamond Plated\",\"color\":\"gray\",\"italic\":false}"

# Special Effects
playsound minecraft:block.enchantment_table.use block @a[distance=..6] ~ ~ ~ 1 1
playsound minecraft:block.anvil.use block @a[distance=..6] ~ ~ ~ 1 1
particle minecraft:poof ~ ~ ~
