effect clear @s
clear @s
function lobby:easteregg/rocket/reset

item replace entity @s[team=Orange] armor.head with diamond_hoe[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"armor.hat.orange","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],attribute_modifiers={modifiers:[{type:"armor",slot:"head",operation:"add_value",id:"craftycannoneers:head_armor",amount:2}],show_in_tooltip:0b},custom_model_data={floats:[17.0f]},custom_data={NoDrop:1b}]
item replace entity @s[team=Orange] armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1,vanishing_curse:1},show_in_tooltip:0b},custom_name='[{"translate":"armor.chestplate.orange","italic":false,"color":"#ff6600"}]',dyed_color={rgb:16155168,show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"armor",slot:"chest",operation:"add_value",id:"craftycannoneers:chest_armor",amount:6}],show_in_tooltip:0b}]
item replace entity @s[team=Orange] armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1,vanishing_curse:1},show_in_tooltip:0b},custom_name='[{"translate":"armor.leggings.orange","italic":false,"color":"#ff6600"}]',dyed_color={rgb:16371247,show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"armor",slot:"legs",operation:"add_value",id:"craftycannoneers:legs_armor",amount:5}],show_in_tooltip:0b}]
item replace entity @s[team=Orange] armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1,vanishing_curse:1},show_in_tooltip:0b},custom_name='[{"translate":"armor.boots.orange","italic":false,"color":"#ff6600"}]',dyed_color={rgb:16371247,show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"armor",slot:"feet",operation:"add_value",id:"craftycannoneers:feet_armor",amount:2}],show_in_tooltip:0b}]

item replace entity @s[team=Purple] armor.head with diamond_hoe[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"armor.hat.purple","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],attribute_modifiers={modifiers:[{type:"armor",slot:"head",operation:"add_value",id:"craftycannoneers:head_armor",amount:2}],show_in_tooltip:0b},custom_model_data={floats:[18.0f]},custom_data={NoDrop:1b}]
item replace entity @s[team=Purple] armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1,vanishing_curse:1},show_in_tooltip:0b},custom_name='[{"translate":"armor.chestplate.purple","italic":false,"color":"#9933ff"}]',dyed_color={rgb:8662963,show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"armor",slot:"chest",operation:"add_value",id:"craftycannoneers:chest_armor",amount:6}],show_in_tooltip:0b}]
item replace entity @s[team=Purple] armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1,vanishing_curse:1},show_in_tooltip:0b},custom_name='[{"translate":"armor.leggings.purple","italic":false,"color":"#9933ff"}]',dyed_color={rgb:12930491,show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"armor",slot:"legs",operation:"add_value",id:"craftycannoneers:legs_armor",amount:5}],show_in_tooltip:0b}]
item replace entity @s[team=Purple] armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1,vanishing_curse:1},show_in_tooltip:0b},custom_name='[{"translate":"armor.boots.purple","italic":false,"color":"#9933ff"}]',dyed_color={rgb:12930491,show_in_tooltip:false},attribute_modifiers={modifiers:[{type:"armor",slot:"feet",operation:"add_value",id:"craftycannoneers:feet_armor",amount:2}],show_in_tooltip:0b}]

loot replace entity @s hotbar.0 loot weapons:cutlass
loot replace entity @s hotbar.1 loot weapons:crossbow_loaded
loot replace entity @s hotbar.2 loot weapons:spyglass

execute if score $NoTracers CmdData matches 1 run loot replace entity @s hotbar.8 loot weapons:arrows
execute unless score $NoTracers CmdData matches 1 run loot replace entity @s hotbar.7 loot weapons:arrows
execute unless score $NoTracers CmdData matches 1 run loot replace entity @s[tag=!redTracer] hotbar.8 loot cannons:tracer
execute unless score $NoTracers CmdData matches 1 run loot replace entity @s[tag=redTracer] hotbar.8 loot cannons:tracer_red

effect give @s instant_health 1 100 true
effect give @s resistance 6 100 true
effect give @s fire_resistance 6 100 true

execute unless score $PVPbal BalanceScore matches 0 run function balancing:pvparmor