##Processes individual items for the purpose of preventing item dropping
##Thanks to Cloud Wolf for the tip!
execute if items entity @s contents diamond_hoe[custom_model_data=91] run kill
execute if items entity @s contents diamond_hoe[custom_model_data=18] run kill
execute if items entity @s contents diamond_hoe[custom_model_data=17] run kill
data modify entity @s[tag=!processed] Owner set from entity @s Thrower
data merge entity @s {NoGravity:1b}
data merge entity @s[tag=!processed] {PickupDelay:0s}
execute store result score @s[tag=!processed] playerUUID run data get entity @s Thrower[0]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=processed] unless entity @a[team=!Spectator,gamemode=!spectator,predicate=game:matches_uuid] run kill @s
execute if entity @a[team=!Spectator,predicate=game:matches_uuid] at @a[team=!Spectator,predicate=game:matches_uuid,limit=1] run tp @s ~ ~ ~
execute if entity @a[team=!Spectator,predicate=game:matches_uuid] at @a[team=!Spectator,predicate=game:matches_uuid,scores={Falling=20..}] run tp @s ~ ~-0.5 ~
execute if entity @a[team=!Spectator,predicate=game:matches_uuid] at @s run tp @s @s
execute store result entity @s Air short 1 run scoreboard players get $toggle CmdData

execute on origin store success score $fullcheck CmdData if entity @s[team=Lobby,tag=fullinv]
execute if score $fullcheck CmdData matches 1 run scoreboard players add @s eyeclick 1
execute unless score $fullcheck CmdData matches 1 run scoreboard players reset @s eyeclick
kill @s[scores={eyeclick=3..}]

execute if score $gamestate CmdData matches 2.. run function everytick:defaultitems

scoreboard players reset $tempuuid playerUUID
tag @s[tag=!processed] add processed