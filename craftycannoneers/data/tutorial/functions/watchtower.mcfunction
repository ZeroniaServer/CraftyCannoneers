execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run clear @s

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run item replace entity @s armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:42,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:48,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Deaths! Congrats!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:45,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons fired!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower,tag=KillMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:43,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower,tag=CannonMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:44,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower,tag=CannonMVP,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:46,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower,tag=KillMVP,tag=DeathMVP,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:47,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired, Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run item replace entity @s hotbar.4 with spyglass{NoDrop:1b,display:{Name:'[{"text":"Spotting Spyglass","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Use this Spyglass to expose","italic":false,"color":"aqua"}]','[{"text":"the weakpoints of a ship!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']}}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 0.6
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s title {"text":"Watchtower","color":"aqua"}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s subtitle {"text":"(Learn about spotting Weakpoints)","color":"yellow"}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run tag @s add InTower

execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s title {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s subtitle {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run clear @s
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run function lobby:items
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run item replace entity @s armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:42,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:48,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Deaths! Congrats!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:45,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons fired!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower,tag=KillMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:43,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower,tag=CannonMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:44,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower,tag=CannonMVP,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:46,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower,tag=KillMVP,tag=DeathMVP,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:47,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired, Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run tag @s remove InTower