execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Orange] ["","\n",{"translate":"weakpoint.destroyed.enemy","italic":true,"color":"green"},"\n",{"translate":"weakpoint.destroyed","color":"dark_aqua","with":[{"translate":"weakpoint.destroyed.something","color":"dark_aqua"},{"translate":"weakpoint.destroyed.exposed","underlined":true,"color":"dark_green"},"\n"]}]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Purple] ["","\n",{"translate":"weakpoint.destroyed.something_own","color":"red"},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=!Spotted] run tellraw @a[team=Orange] ["","\n",{"translate":"weakpoint.destroyed.enemy","italic":true,"color":"green"},"\n",{"translate":"weakpoint.destroyed","color":"dark_aqua","with":[{"translate":"weakpoint.destroyed.something","color":"dark_aqua"},{"translate":"weakpoint.destroyed.unexposed","underlined":true,"color":"red"},{"translate":"weakpoint.destroyed.no_bonus","color":"dark_aqua"}]},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $DamagePurple CmdData 85
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $CritPurple CmdData 87
scoreboard players set $OrangeWPDelay CmdData 1

tp @e[type=slime,tag=Weakpoint,tag=Orange] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint,tag=Orange]

scoreboard players add $OrangeWP CmdData 1

execute as @e[type=marker,tag=WeakpointLoc,tag=Purple] at @s if block ~ ~ ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Purple] at @s if block ~ ~1 ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Purple] at @s if block ~1 ~1 ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Purple] at @s if block ~-1 ~1 ~ air run kill @s
execute as @e[type=marker,tag=WeakpointLoc,tag=Purple] at @s if block ~ ~2 ~ air run kill @s
tag @e[type=marker,tag=WeakpointLoc,tag=Purple,sort=random,limit=1] add SelectedWeakP
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Purple] unless score $OrangeWP CmdData matches 6.. run function game:shipweakpoint/placenewpurple
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Purple] run scoreboard players set $OrangeWP CmdData 6

execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s run summon slime ~ ~ ~2 {PersistenceRequired:1b,Tags:["Weakpoint","Orange"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s run summon marker ~1 ~ ~1 {Tags:["Weakpoint","XParticle","1","Orange"]}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s run summon marker ~-1 ~ ~1 {Tags:["Weakpoint","XParticle","2","Orange"]}

team join NoName @e[type=slime,tag=Weakpoint]

scoreboard players set @a[team=Orange,scores={WPNotify=-1000..}] WPNotify -20
execute if score $OrangeWP CmdData matches 6.. run tellraw @a[team=Orange] ["",{"translate":"weakpoint.destroyed.all_enemy","color":"aqua"},"\n"]
execute if score $OrangeWP CmdData matches 6.. run tellraw @a[team=Purple] ["",{"translate":"weakpoint.destroyed.all_own","color":"red"},"\n"]

kill @e[type=marker,tag=SelectedWeakP]