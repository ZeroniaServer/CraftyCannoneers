execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Purple] ["","\n",{"text":"Enemy Weakpoint destroyed!","italic":true,"color":"green"},"\n",{"text":"Something destroyed an ","color":"dark_aqua"},{"text":"exposed","underlined":true,"color":"dark_green"},{"text":" Weakpoint.","color":"dark_aqua"},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Orange] ["","\n",{"text":"Something destroyed of your ship's Weakpoints!","color":"red"},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=!Spotted] run tellraw @a[team=Purple] ["","\n",{"text":"Enemy Weakpoint destroyed!","italic":true,"color":"green"},"\n",{"text":"Something destroyed an ","color":"dark_aqua"},{"text":"unexposed","underlined":true,"color":"red"},{"text":" Weakpoint. No bonus damage dealt.","color":"dark_aqua"},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $DamageOrange CmdData 85
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $CritOrange CmdData 87
scoreboard players set $PurpleWPDelay CmdData 1

tp @e[type=slime,tag=Weakpoint,tag=Purple] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint,tag=Purple]

scoreboard players add $PurpleWP CmdData 1

execute as @e[type=marker,tag=WeakpointLoc,tag=Orange] at @s if block ~ ~ ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Orange] at @s if block ~ ~1 ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Orange] at @s if block ~1 ~1 ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Orange] at @s if block ~-1 ~1 ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Orange] at @s if block ~ ~2 ~ air run kill @s
tag @e[type=marker,tag=WeakpointLoc,tag=Orange,sort=random,limit=1] add SelectedWeakP
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Orange] unless score $PurpleWP CmdData matches 6.. run function game:shipweakpoint/placeneworange
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Orange] run scoreboard players set $PurpleWP CmdData 6

execute as @e[type=marker,tag=SelectedWeakP,tag=Orange] at @s run summon slime ~ ~ ~-2 {PersistenceRequired:1b,Tags:["Weakpoint","Purple"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=marker,tag=SelectedWeakP,tag=Orange] at @s run summon marker ~1 ~ ~-1 {Tags:["Weakpoint","XParticle","1","Purple"]}
execute as @e[type=marker,tag=SelectedWeakP,tag=Orange] at @s run summon marker ~-1 ~ ~-1 {Tags:["Weakpoint","XParticle","2","Purple"]}

team join NoName @e[type=slime,tag=Weakpoint]

execute if score $PurpleWP CmdData matches 6.. run tellraw @a[team=Purple] ["",{"text":"All enemy Weakpoints have been destroyed!","color":"aqua"},"\n"]
execute if score $PurpleWP CmdData matches 6.. run tellraw @a[team=Orange] ["",{"text":"All of your Weakpoints have been destroyed!","color":"red"},"\n"]

kill @e[type=marker,tag=SelectedWeakP]