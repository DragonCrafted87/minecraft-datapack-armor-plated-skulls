execute as @e[predicate=armor_plate_skull:head_wear] at @s if entity @e[predicate=armor_plate_skull:leather_helmet] run function armor_plate_skull:leather
execute as @e[predicate=armor_plate_skull:head_wear] at @s if entity @e[predicate=armor_plate_skull:golden_helmet] run function armor_plate_skull:golden
execute as @e[predicate=armor_plate_skull:head_wear] at @s if entity @e[predicate=armor_plate_skull:chainmail_helmet] run function armor_plate_skull:chainmail
execute as @e[predicate=armor_plate_skull:head_wear] at @s if entity @e[predicate=armor_plate_skull:iron_helmet] run function armor_plate_skull:iron
execute as @e[predicate=armor_plate_skull:head_wear] at @s if entity @e[predicate=armor_plate_skull:diamond_helmet] run function armor_plate_skull:diamond
execute as @e[predicate=armor_plate_skull:head_wear] at @s if entity @e[predicate=armor_plate_skull:netherite_helmet] run function armor_plate_skull:netherite

schedule function armor_plate_skull:item_merge 1s
