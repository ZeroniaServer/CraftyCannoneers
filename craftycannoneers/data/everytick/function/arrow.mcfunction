#Assign entityid tags
execute unless score @s entityidset matches 1 run function entityid:assign_tag

scoreboard players add @s CmdData 1
execute if score @s CmdData matches 1 run function everytick:piercingon
execute if score @s CmdData matches 2 run function everytick:piercingoff

#Projectiles get Piercing when near boats
execute at @s if entity @e[type=boat,tag=Boat,distance=..4] run function everytick:piercingon
execute at @s[tag=piercing,scores={CmdData=2..}] unless entity @e[type=boat,tag=Boat,distance=..4] run function everytick:piercingoff

#Kills arrows in the ground / outside Combat Area
execute at @s[nbt={inGround:1b}] run function everytick:arrowbreak
execute at @s[predicate=game:tutorialbounds,predicate=!tutorial:combatarea] run function everytick:arrowbreak