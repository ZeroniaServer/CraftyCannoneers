execute if entity @s[tag=!WeakpointDamaged,tag=Purple,tag=Spotted] run scoreboard players add $DamagePurple CmdData 55
execute if entity @s[tag=!WeakpointDamaged,tag=Purple] run function game:shipweakpoint/spawnneworange

execute if entity @s[tag=!WeakpointDamaged,tag=Orange,tag=Spotted] run scoreboard players add $DamageOrange CmdData 55
execute if entity @s[tag=!WeakpointDamaged,tag=Orange] run function game:shipweakpoint/spawnnewpurple

tag @s add WeakpointDamaged