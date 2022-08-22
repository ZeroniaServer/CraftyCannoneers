scoreboard players operation @s[tag=!HasUUID] playerUUID = @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] playerUUID
data modify entity @s[tag=!HasUUID] CustomName set from entity @e[type=armor_stand,tag=cannonball,limit=1,sort=nearest,distance=..4] CustomName
tag @s[tag=!HasUUID] add HasUUID

scoreboard players add @s CmdData 1

execute at @s if entity @s[tag=HitWeakpointOrange,tag=!WeakpointAnnounced] run function cannons:hitweakpointorange
execute at @s if entity @s[tag=HitWeakpointPurple,tag=!WeakpointAnnounced] run function cannons:hitweakpointpurple
execute at @s if entity @s[tag=HitWeakpointFake,tag=!WeakpointAnnounced] run function cannons:hitweakpointfake

execute at @s[scores={CmdData=3}] unless entity @s[predicate=cannons:safezones/island] unless entity @s[predicate=cannons:safezones/tutorial] run function cannons:lightfill2
execute at @s[scores={CmdData=3}] unless entity @s[predicate=cannons:safezones/island] unless entity @s[predicate=cannons:safezones/tutorial] run function cannons:afterdamage
execute at @s[scores={CmdData=3}] unless entity @s[predicate=cannons:safezones/island] if entity @s[predicate=cannons:safezones/tutorial] run function cannons:afterdamagetutorial

kill @s[scores={CmdData=3..}]