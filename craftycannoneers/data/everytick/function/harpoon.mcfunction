#Harpoons continue doing damage when near boats
execute at @s[tag=!nearboat,nbt={DealtDamage:0b,inGround:0b}] if entity @e[type=boat,tag=Boat,distance=..4] run function everytick:nearboat
execute at @s[tag=nearboat] unless entity @e[type=boat,tag=Boat,distance=..4] run tag @s remove nearboat
tag @s[tag=nearboat,nbt={inGround:1b}] remove nearboat

#On Training Island, kills Harpoons in the ground / outside Combat Area
execute at @s[predicate=game:tutorialbounds,predicate=!tutorial:combatarea] run function tutorial:combatarea/returnharpoon
execute at @s[predicate=game:tutorialbounds,nbt={inGround:1b}] run function tutorial:combatarea/returnharpoon