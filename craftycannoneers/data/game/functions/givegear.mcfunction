effect clear @s
clear @s
function lobby:easteregg/buttonreset

item replace entity @s[team=Orange] armor.head with diamond_hoe{NoDrop:1b,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:head,Name:"generic.armor",UUID:[I;-122417,13921,165739,-27842]}],Unbreakable:1b,CustomModelData:17,display:{Name:'[{"translate":"armor.hat.orange","italic":false,"color":"#ff6600"}]',Lore:['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
item replace entity @s[team=Orange] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Amount:6,Slot:chest,Name:"generic.armor",UUID:[I;-122417,14121,165739,-28242]}],Unbreakable:1b,display:{color:16740608,Name:'[{"translate":"armor.chestplate.orange","italic":false,"color":"#ff6600"}]'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
item replace entity @s[team=Orange] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Amount:5,Slot:legs,Name:"generic.armor",UUID:[I;-122417,14321,165739,-28642]}],Unbreakable:1b,display:{color:16752384,Name:'[{"translate":"armor.leggings.orange","italic":false,"color":"#ff6600"}]'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
item replace entity @s[team=Orange] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:feet,Name:"generic.armor",UUID:[I;-122417,14521,165739,-29042]}],Unbreakable:1b,display:{color:16752384,Name:'[{"translate":"armor.boots.orange","italic":false,"color":"#ff6600"}]'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}

item replace entity @s[team=Purple] armor.head with diamond_hoe{NoDrop:1b,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:head,Name:"generic.armor",UUID:[I;-122417,13921,165739,-27842]}],Unbreakable:1b,CustomModelData:18,display:{Name:'[{"translate":"armor.hat.purple","italic":false,"color":"#9933ff"}]',Lore:['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
item replace entity @s[team=Purple] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Amount:6,Slot:chest,Name:"generic.armor",UUID:[I;-122417,14121,165739,-28242]}],Unbreakable:1b,display:{color:9765119,Name:'[{"translate":"armor.chestplate.purple","italic":false,"color":"#9933ff"}]'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
item replace entity @s[team=Purple] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Amount:5,Slot:legs,Name:"generic.armor",UUID:[I;-122417,14321,165739,-28642]}],Unbreakable:1b,display:{color:13762815,Name:'[{"translate":"armor.leggings.orange","italic":false,"color":"#9933ff"}]'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}
item replace entity @s[team=Purple] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:feet,Name:"generic.armor",UUID:[I;-122417,14521,165739,-29042]}],Unbreakable:1b,display:{color:13762815,Name:'[{"translate":"armor.boots.orange","italic":false,"color":"#9933ff"}]'},Enchantments:[{id:"binding_curse",lvl:1}],HideFlags:7}

loot replace entity @s hotbar.0 loot weapons:cutlass
loot replace entity @s hotbar.1 loot weapons:crossbow_loaded
loot replace entity @s hotbar.2 loot weapons:spyglass

execute if score $NoTracers CmdData matches 0 run loot replace entity @s hotbar.7 loot weapons:arrows
execute if score $NoTracers CmdData matches 1 run loot replace entity @s hotbar.8 loot weapons:arrows
execute unless score $NoTracers CmdData matches 1 run loot replace entity @s hotbar.8 loot weapons:tracer

effect give @s instant_health 1 100 true
effect give @s resistance 6 100 true
effect give @s fire_resistance 6 100 true

execute unless score $PVPbal BalanceScore matches 0 run function balancing:pvparmor