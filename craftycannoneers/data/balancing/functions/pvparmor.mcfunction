#> Balanced
execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Orange] armor.head with minecraft:diamond_hoe[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"head",name:"generic.armor",uuid:[I;-122417,13921,165739,-27842]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},custom_model_data=17,custom_name='[{"translate":"armor.hat.orange","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_data={NoDrop:1b}]
execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Orange] armor.chest with minecraft:leather_chestplate[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:6,slot:"chest",name:"generic.armor",uuid:[I;-122417,14121,165739,-28242]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16155168,custom_name='[{"translate":"armor.chestplate.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Orange] armor.legs with minecraft:leather_leggings[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:5,slot:"legs",name:"generic.armor",uuid:[I;-122417,14321,165739,-28642]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16371247,custom_name='[{"translate":"armor.leggings.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Orange] armor.feet with minecraft:leather_boots[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"feet",name:"generic.armor",uuid:[I;-122417,14521,165739,-29042]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16371247,custom_name='[{"translate":"armor.boots.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]

execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Purple] armor.head with minecraft:diamond_hoe[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"head",name:"generic.armor",uuid:[I;-122417,13921,165739,-27842]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},custom_model_data=18,custom_name='[{"translate":"armor.hat.purple","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_data={NoDrop:1b}]
execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Purple] armor.chest with minecraft:leather_chestplate[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:6,slot:"chest",name:"generic.armor",uuid:[I;-122417,14121,165739,-28242]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=8662963,custom_name='[{"translate":"armor.chestplate.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Purple] armor.legs with minecraft:leather_leggings[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:5,slot:"legs",name:"generic.armor",uuid:[I;-122417,14321,165739,-28642]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=12930491,custom_name='[{"translate":"armor.leggings.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 0 run item replace entity @s[team=Purple] armor.feet with minecraft:leather_boots[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"feet",name:"generic.armor",uuid:[I;-122417,14521,165739,-29042]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=12930491,custom_name='[{"translate":"armor.boots.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]

#> Orange too strong
execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Orange] armor.head with minecraft:diamond_hoe[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:1,slot:"head",name:"generic.armor",uuid:[I;-122417,13921,165739,-27842]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},custom_model_data=17,custom_name='[{"translate":"armor.hat.orange","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_data={NoDrop:1b}]
execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Orange] armor.chest with minecraft:leather_chestplate[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:4,slot:"chest",name:"generic.armor",uuid:[I;-122417,14121,165739,-28242]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16155168,custom_name='[{"translate":"armor.chestplate.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Orange] armor.legs with minecraft:leather_leggings[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:4,slot:"legs",name:"generic.armor",uuid:[I;-122417,14321,165739,-28642]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16371247,custom_name='[{"translate":"armor.leggings.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Orange] armor.feet with minecraft:leather_boots[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"feet",name:"generic.armor",uuid:[I;-122417,14521,165739,-29042]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16371247,custom_name='[{"translate":"armor.boots.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]

execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Purple] armor.head with minecraft:diamond_hoe[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"head",name:"generic.armor",uuid:[I;-122417,13921,165739,-27842]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},custom_model_data=18,custom_name='[{"translate":"armor.hat.purple","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_data={NoDrop:1b}]
execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Purple] armor.chest with minecraft:leather_chestplate[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:6,slot:"chest",name:"generic.armor",uuid:[I;-122417,14121,165739,-28242]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=8662963,custom_name='[{"translate":"armor.chestplate.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Purple] armor.legs with minecraft:leather_leggings[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:5,slot:"legs",name:"generic.armor",uuid:[I;-122417,14321,165739,-28642]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=12930491,custom_name='[{"translate":"armor.leggings.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 1 run item replace entity @s[team=Purple] armor.feet with minecraft:leather_boots[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"feet",name:"generic.armor",uuid:[I;-122417,14521,165739,-29042]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=12930491,custom_name='[{"translate":"armor.boots.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]

#> Purple too strong
execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Orange] armor.head with minecraft:diamond_hoe[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"head",name:"generic.armor",uuid:[I;-122417,13921,165739,-27842]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},custom_model_data=17,custom_name='[{"translate":"armor.hat.orange","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_data={NoDrop:1b}]
execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Orange] armor.chest with minecraft:leather_chestplate[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:6,slot:"chest",name:"generic.armor",uuid:[I;-122417,14121,165739,-28242]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16155168,custom_name='[{"translate":"armor.chestplate.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Orange] armor.legs with minecraft:leather_leggings[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:5,slot:"legs",name:"generic.armor",uuid:[I;-122417,14321,165739,-28642]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16371247,custom_name='[{"translate":"armor.leggings.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Orange] armor.feet with minecraft:leather_boots[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"feet",name:"generic.armor",uuid:[I;-122417,14521,165739,-29042]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=16371247,custom_name='[{"translate":"armor.boots.orange","italic":false,"color":"#ff6600"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]

execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Purple] armor.head with minecraft:diamond_hoe[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:1,slot:"head",name:"generic.armor",uuid:[I;-122417,13921,165739,-27842]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},custom_model_data=18,custom_name='[{"translate":"armor.hat.purple","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_data={NoDrop:1b}]
execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Purple] armor.chest with minecraft:leather_chestplate[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:4,slot:"chest",name:"generic.armor",uuid:[I;-122417,14121,165739,-28242]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=8662963,custom_name='[{"translate":"armor.chestplate.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Purple] armor.legs with minecraft:leather_leggings[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:4,slot:"legs",name:"generic.armor",uuid:[I;-122417,14321,165739,-28642]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=12930491,custom_name='[{"translate":"armor.leggings.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]
execute if score $PVPbal BalanceScore matches 2 run item replace entity @s[team=Purple] armor.feet with minecraft:leather_boots[attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,slot:"feet",name:"generic.armor",uuid:[I;-122417,14521,165739,-29042]}],show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},dyed_color=12930491,custom_name='[{"translate":"armor.boots.purple","italic":false,"color":"#9933ff"}]',enchantments={levels:{binding_curse:1},show_in_tooltip:0b}]