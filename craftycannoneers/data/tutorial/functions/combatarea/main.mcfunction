execute as @a[team=Lobby] run function tutorial:combatarea/players

execute as @e[type=trident,predicate=!tutorial:combatarea] run function tutorial:combatarea/returnharpoon
execute as @e[type=trident,nbt={inGround:1b}] run function tutorial:combatarea/returnharpoon

execute as @e[type=item_frame,tag=TutorialWeapon] at @s run function tutorial:combatarea/weaponrack