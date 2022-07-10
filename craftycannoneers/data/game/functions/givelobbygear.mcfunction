effect clear @s
clear @s
effect give @s weakness 1000000 255 true
effect give @s resistance 1000000 255 true

item replace entity @a[nbt={Inventory:[{id:"minecraft:diamond_hoe",tag:{CustomModelData:61},Slot:103b}]}] armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if score @s bestParkourTime = @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:61,Unbreakable:1b,display:{Name:'[{"text":"Parkour Pirate Hat","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
execute if entity @s[tag=KillMVP] at @s run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:42,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
execute if entity @s[tag=DeathMVP] at @s run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:48,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Deaths! Congrats!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
execute if entity @s[tag=CannonMVP] at @s run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:45,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons fired!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
execute if entity @s[tag=KillMVP,tag=DeathMVP] at @s run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:43,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
execute if entity @s[tag=CannonMVP,tag=DeathMVP] at @s run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:44,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
execute if entity @s[tag=CannonMVP,tag=KillMVP] at @s run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:46,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
execute if entity @s[tag=KillMVP,tag=DeathMVP,tag=CannonMVP] at @s run item replace entity @s armor.head with diamond_hoe{NoDrop:1b,CustomModelData:47,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired, Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}

item replace entity @s[team=Orange,tag=!KillMVP,tag=!DeathMVP,tag=!CannonMVP] armor.head with diamond_hoe{NoDrop:1b,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:head,Name:"generic.armor",UUID:[I;-122417,13921,165739,-27842]}],Unbreakable:1b,CustomModelData:17,display:{Name:'[{"text":"Orange Pirate Hat","italic":false,"color":"#ff6600"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Take off this hat to leave the game!","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
item replace entity @s[team=Orange] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Amount:5,Slot:legs,Name:"generic.armor",UUID:[I;-122417,14321,165739,-28642]}],Unbreakable:1b,display:{color:16752384,Name:'[{"text":"Orange Pirate Leggings","italic":false,"color":"#ff6600"}]'},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
item replace entity @s[team=Orange] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Amount:6,Slot:chest,Name:"generic.armor",UUID:[I;-122417,14121,165739,-28242]}],Unbreakable:1b,display:{color:16740608,Name:'[{"text":"Orange Pirate Chestplate","italic":false,"color":"#ff6600"}]'},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
item replace entity @s[team=Orange] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Amount:5,Slot:legs,Name:"generic.armor",UUID:[I;-122417,14321,165739,-28642]}],Unbreakable:1b,display:{color:16752384,Name:'[{"text":"Orange Pirate Leggings","italic":false,"color":"#ff6600"}]'},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
item replace entity @s[team=Orange] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:feet,Name:"generic.armor",UUID:[I;-122417,14521,165739,-29042]}],Unbreakable:1b,display:{color:16752384,Name:'[{"text":"Orange Pirate Boots","italic":false,"color":"#ff6600"}]'},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}

item replace entity @s[team=Purple,tag=!KillMVP,tag=!DeathMVP,tag=!CannonMVP] armor.head with diamond_hoe{NoDrop:1b,AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:head,Name:"generic.armor",UUID:[I;-122417,13921,165739,-27842]}],Unbreakable:1b,CustomModelData:18,display:{Name:'[{"text":"Purple Pirate Hat","italic":false,"color":"#9933ff"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Take off this hat to leave the game!","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},HideFlags:7}
item replace entity @s[team=Purple] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Amount:6,Slot:chest,Name:"generic.armor",UUID:[I;-122417,14121,165739,-28242]}],Unbreakable:1b,display:{color:9765119,Name:'[{"text":"Purple Pirate Chestplate","italic":false,"color":"#9933ff"}]'},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
item replace entity @s[team=Purple] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Amount:5,Slot:legs,Name:"generic.armor",UUID:[I;-122417,14321,165739,-28642]}],Unbreakable:1b,display:{color:13762815,Name:'[{"text":"Purple Pirate Leggings","italic":false,"color":"#9933ff"}]'},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
item replace entity @s[team=Purple] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Amount:2,Slot:feet,Name:"generic.armor",UUID:[I;-122417,14521,165739,-29042]}],Unbreakable:1b,display:{color:13762815,Name:'[{"text":"Purple Pirate Boots","italic":false,"color":"#9933ff"}]'},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}

item replace entity @s hotbar.0 with snowball{NoDrop:1b,display:{Name:'[{"text":"Rock.","italic":false,"color":"red"}]',Lore:['[{"text":"Throw at player to insta-kill!","italic":false,"color":"dark_red"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Okay not really... It just","italic":false,"color":"gray"}]','[{"text":"gives you something to do","italic":false,"color":"gray"}]','[{"text":"while you wait for the game","italic":false,"color":"gray"}]','[{"text":"to start...","italic":false,"color":"gray"}]']}} 15

tellraw @s[team=Purple] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"dark_purple"},{"text":" to leave the game!","color":"aqua","italic":true}]
tellraw @s[team=Orange] ["",{"text":"You can take off your ","color":"aqua","italic":true},{"text":"Pirate Hat","bold":true,"color":"gold"},{"text":" to leave the game!","color":"aqua","italic":true}]