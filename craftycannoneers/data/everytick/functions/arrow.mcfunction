#Assign entityid tags
execute unless score @s entityidset matches 1 run function entityid:assign_tag

#Projectiles get Piercing when near boats
execute at @s if entity @e[type=boat,tag=Boat,distance=..4] run function everytick:piercingon
execute at @s[tag=piercing] unless entity @e[type=boat,tag=Boat,distance=..4] run function everytick:piercingoff

#Kills arrows in the ground / outside Combat Area
execute at @s[nbt={inGround:1b}] run function everytick:arrowbreak
kill @s[predicate=game:tutorialbounds,predicate=!tutorial:combatarea]