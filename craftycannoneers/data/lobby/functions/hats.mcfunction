execute if score @s bestParkourTime = @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run item replace entity @a[nbt={Inventory:[{id:"minecraft:diamond_hoe",tag:{CustomModelData:61},Slot:103b}]}] armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if score @s bestParkourTime = @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run item replace entity @s armor.head with diamond_hoe{CustomModelData:61,Unbreakable:1b,display:{Name:'[{"text":"Parkour Pirate Hat","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}

item replace entity @s armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if entity @s[tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:42,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if entity @s[tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:48,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Deaths! Congrats!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if entity @s[tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:45,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons fired!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if entity @s[tag=KillMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:43,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if entity @s[tag=CannonMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:44,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if entity @s[tag=CannonMVP,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:46,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute if entity @s[tag=KillMVP,tag=DeathMVP,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:47,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired, Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}