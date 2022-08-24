execute if entity @s[team=Purple,scores={spotting=55..}] as @a[team=Purple] at @s run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute if entity @s[team=Purple,scores={spotting=55..}] run tellraw @a[team=Purple] ["","\n",{"text":"Ship weakpoint exposed by ","color":"aqua"},{"selector":"@s"},"\n"]
execute if entity @s[team=Purple,scores={spotting=55..}] run tag @e[type=slime,tag=Weakpoint,tag=Purple] add Spotted
execute if entity @s[team=Purple,scores={spotting=55..}] run scoreboard players set @e[type=slime,tag=Weakpoint,tag=Purple] spotting -1
execute if entity @s[team=Purple,scores={spotting=55..}] run title @a[team=Purple] title {"text":" ","color":"white"}
execute if entity @s[team=Purple,scores={spotting=55..}] run title @a[team=Purple] subtitle {"text":" ","color":"white"}
execute if entity @s[team=Purple,scores={spotting=55..}] run scoreboard players reset @a[team=Purple] spotting

execute if entity @s[team=Orange,scores={spotting=55..}] as @a[team=Orange] at @s run playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
execute if entity @s[team=Orange,scores={spotting=55..}] run tellraw @a[team=Orange] ["","\n",{"text":"Ship weakpoint exposed by ","color":"aqua"},{"selector":"@s"},"\n"]
execute if entity @s[team=Orange,scores={spotting=55..}] run tag @e[type=slime,tag=Weakpoint,tag=Orange] add Spotted
execute if entity @s[team=Orange,scores={spotting=55..}] run scoreboard players set @e[type=slime,tag=Weakpoint,tag=Orange] spotting -1
execute if entity @s[team=Orange,scores={spotting=55..}] run title @a[team=Orange] title {"text":" ","color":"white"}
execute if entity @s[team=Orange,scores={spotting=55..}] run title @a[team=Orange] subtitle {"text":" ","color":"white"}
execute if entity @s[team=Orange,scores={spotting=55..}] run scoreboard players reset @a[team=Orange] spotting

scoreboard players set $dust6 CmdData 0