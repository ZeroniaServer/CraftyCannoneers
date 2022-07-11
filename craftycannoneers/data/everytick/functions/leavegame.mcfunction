tag @a[scores={LeftGame=1..}] remove KillMVP
tag @a[scores={LeftGame=1..}] remove DeathMVP
tag @a[scores={LeftGame=1..}] remove CannonMVP
execute as @a[scores={LeftGame=1..}] run tag @s add LeaveGame

scoreboard players enable @a[team=!Lobby] leavegame
scoreboard players reset @a[team=Lobby] leavegame
execute as @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/objective7=false}] unless score @s leavegame matches 0 run function tutorial:resetprogress
execute as @a[team=!Lobby,team=!Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" left their team!","color":"dark_aqua"}]
execute as @a[team=Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"text":" is no longer spectating the game.","color":"gray"}]
execute as @a[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveGame

#Pirate Hat game leaving
execute as @a[team=Purple,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame
execute as @a[team=Orange,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame

execute as @a[tag=LeaveGame] unless entity @s[scores={objectivecount=1..}] run scoreboard players set @s objectivecount 1
execute as @a[tag=LeaveGame] run title @s times 0 50 15
execute as @a[tag=LeaveGame] at @s run tp @s @s
execute as @a[tag=LeaveGame] at @s run tp @s -55 -21 0 -90 0
execute as @a[tag=LeaveGame] at @s run clear @s
execute as @a[tag=LeaveGame] run function lobby:items
execute as @a[tag=LeaveGame] at @s run effect clear @s
execute as @a[team=] run effect give @s slowness 2 100 true
execute as @a[team=] run effect give @s jump_boost 2 128 true
execute as @a[tag=LeaveGame] at @s run gamemode adventure @s
execute as @a[tag=LeaveGame] run recipe take @s *
execute as @a[tag=LeaveGame] unless entity @s[team=] unless score @s LeftGame matches 1.. at @s run playsound block.beehive.exit master @s ~ ~ ~ 1 1
execute as @a[scores={LeftGame=1..}] run scoreboard players reset @s LeftGame
execute as @a[tag=LeaveGame] at @s run team join Lobby @s
execute as @a[tag=LeaveGame] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
tag @a[tag=LeaveGame] remove onboatregen
tag @a[tag=LeaveGame] remove loaded
execute as @a[tag=LeaveGame] run scoreboard players reset @s loverocks

execute as @a[tag=LeaveGame] if score @s bestParkourTime = @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run item replace entity @a[nbt={Inventory:[{id:"minecraft:diamond_hoe",tag:{CustomModelData:61},Slot:103b}]}] armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=LeaveGame] if score @s bestParkourTime = @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run item replace entity @s armor.head with diamond_hoe{CustomModelData:61,Unbreakable:1b,display:{Name:'[{"text":"Parkour Pirate Hat","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}

execute as @a[tag=LeaveGame,tag=KillMVP] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:42,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=LeaveGame,tag=DeathMVP] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:48,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Deaths! Congrats!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=LeaveGame,tag=CannonMVP] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:45,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons fired!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=LeaveGame,tag=KillMVP,tag=DeathMVP] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:43,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=LeaveGame,tag=CannonMVP,tag=DeathMVP] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:44,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=LeaveGame,tag=CannonMVP,tag=KillMVP] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:46,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired & Kills!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
execute as @a[tag=LeaveGame,tag=KillMVP,tag=DeathMVP,tag=CannonMVP] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:47,Unbreakable:1b,display:{Name:'[{"text":"MVP Pirate Hat","italic":false,"color":"gold"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Most Cannons Fired, Kills & Deaths!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}

execute as @a[tag=LeaveGame,tag=inParkour] run tellraw @s [{"text":"You left the game, so your Parkour run was canceled.","color":"red"}]
execute as @a[tag=LeaveGame,tag=inParkour] run tag @s remove inParkour

tag @a[tag=LeaveGame] remove LeaveGame