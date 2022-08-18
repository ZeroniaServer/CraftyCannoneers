execute as @a[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] at @s run playsound ding master @a ~ ~ ~ 1 0.6
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] run title @s title {"text":"Combat Area","color":"aqua"}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] run title @s subtitle {"text":"(Try out some weapons)","color":"yellow"}

execute as @a[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] run clear @s
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] run function lobby:hats
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] run effect clear @s weakness
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] run tag @s add InCombat

execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] at @s run playsound ding master @a ~ ~ ~ 1 0.6
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] run title @s title {"text":"Combat Area","color":"aqua"}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] run title @s subtitle {"text":"(Try out some weapons)","color":"yellow"}

execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] run clear @s
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] run item replace entity @s armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:42,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:48,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Deaths! Congrats!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:45,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons fired!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat,tag=KillMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:43,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat,tag=CannonMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:44,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat,tag=CannonMVP,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:46,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat,tag=KillMVP,tag=DeathMVP,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe{CustomModelData:47,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired, Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] run effect clear @s weakness
execute as @a[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] run tag @s add InCombat

execute as @a[predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2,tag=InCombat] run title @s title {"text":" "}
execute as @a[predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2,tag=InCombat] run title @s subtitle {"text":" "}
execute as @a[predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2,tag=InCombat] run clear @s
execute as @a[predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2,tag=InCombat] run function lobby:items
execute as @a[predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2,tag=InCombat] run tag @s remove InCombat

execute as @e[type=trident] at @s unless predicate tutorial:combatarea run function tutorial:returnharpoon
execute as @e[type=trident,nbt={inGround:1b}] run function tutorial:returnharpoon