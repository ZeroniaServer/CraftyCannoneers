execute if entity @s[team=Purple,scores={spotting=43..}] as @a[team=Purple] at @s run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute if entity @s[team=Purple,scores={spotting=43..}] run tellraw @a[team=Purple] ["","\n",{"text":"Ship Weakpoint exposed by ","color":"aqua"},{"selector":"@s"},"\n"]
execute if entity @s[team=Purple,scores={spotting=43..}] run tag @e[type=slime,tag=Weakpoint,tag=Purple] add Spotted
execute if entity @s[team=Purple,scores={spotting=43..}] run scoreboard players set @e[type=slime,tag=Weakpoint,tag=Purple] spotting -1
execute if entity @s[team=Purple,scores={spotting=43..}] run title @a[team=Purple,scores={spotting=1..}] title {"text":" ","color":"white"}
execute if entity @s[team=Purple,scores={spotting=43..}] run title @a[team=Purple,scores={spotting=1..}] subtitle {"text":" ","color":"white"}
execute if entity @s[team=Purple,scores={spotting=43..}] run scoreboard players reset @a[team=Purple] spotting

execute if entity @s[team=Orange,scores={spotting=43..}] as @a[team=Orange] at @s run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute if entity @s[team=Orange,scores={spotting=43..}] run tellraw @a[team=Orange] ["","\n",{"text":"Ship Weakpoint exposed by ","color":"aqua"},{"selector":"@s"},"\n"]
execute if entity @s[team=Orange,scores={spotting=43..}] run tag @e[type=slime,tag=Weakpoint,tag=Orange] add Spotted
execute if entity @s[team=Orange,scores={spotting=43..}] run scoreboard players set @e[type=slime,tag=Weakpoint,tag=Orange] spotting -1
execute if entity @s[team=Orange,scores={spotting=43..}] run title @a[team=Orange,scores={spotting=1..}] title {"text":" ","color":"white"}
execute if entity @s[team=Orange,scores={spotting=43..}] run title @a[team=Orange,scores={spotting=1..}] subtitle {"text":" ","color":"white"}
execute if entity @s[team=Orange,scores={spotting=43..}] run scoreboard players reset @a[team=Orange] spotting

scoreboard players set $dust6 CmdData 0