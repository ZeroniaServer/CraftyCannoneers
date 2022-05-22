execute as @a[scores={LeftGame=1..}] run tag @s add LeaveGame
execute as @a[scores={LeftGame=1..}] run scoreboard players reset @s LeftGame

scoreboard players enable @a[team=!Lobby] leavegame
scoreboard players reset @a[team=Lobby] leavegame
execute as @a[team=!Lobby,team=!Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s"},{"text":" left their team!","color":"blue"}]
execute as @a[team=Spectator] unless score @s leavegame matches 0 run tellraw @a ["",{"selector":"@s","color":"dark_gray"},{"text":" is no longer spectating the game.","color":"gray"}]
execute as @a[team=!Lobby] unless score @s leavegame matches 0 run tag @s add LeaveGame

#Pirate Hat game leaving
execute as @a[team=Purple,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame
execute as @a[team=Orange,nbt=!{Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",Count:1b}]}] run trigger leavegame

execute as @a[tag=LeaveGame] run title @s times 0 50 15
execute as @a[tag=LeaveGame] at @s run tp @s @s
execute as @a[tag=LeaveGame] at @s run tp @s -55 -21 0 -90 0
execute as @a[tag=LeaveGame] at @s run clear @s
execute as @a[tag=LeaveGame] at @s run effect clear @s
execute as @a[tag=LeaveGame] at @s run gamemode adventure @s
execute as @a[tag=LeaveGame] run recipe take @s *
execute as @a[team=] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~-1 ~ 1 1.2
execute as @a[tag=LeaveGame] unless entity @s[team=] at @s run playsound block.beehive.exit master @s ~ ~ ~ 1 1
execute as @a[tag=LeaveGame] at @s run team join Lobby @s
execute as @a[tag=LeaveGame] at @s run item replace entity @s armor.head with diamond_hoe{CustomModelData:39,Unbreakable:1b,display:{Name:'[{"text":"Pirate Hat","italic":false,"color":"white"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Ahoy!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']},Enchantments:[{id:binding_curse,lvl:1}],HideFlags:7}
tag @a[tag=LeaveGame] remove LeaveGame