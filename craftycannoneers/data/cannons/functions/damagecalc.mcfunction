scoreboard players add @e[type=marker,tag=ImpactMarker] CmdData 1

execute as @e[type=marker,tag=ImpactMarker,tag=HitWeakpointOrange,tag=!WeakpointAnnounced] at @s run function cannons:hitweakpointorange
execute as @e[type=marker,tag=ImpactMarker,tag=HitWeakpointPurple,tag=!WeakpointAnnounced] at @s run function cannons:hitweakpointpurple
execute as @e[type=marker,tag=ImpactMarker,tag=HitWeakpointFake,tag=!WeakpointAnnounced] at @s run function cannons:hitweakpointfake

execute as @e[type=marker,tag=ImpactMarker,scores={CmdData=3}] at @s unless entity @s[predicate=cannons:safezones/island] unless entity @s[predicate=cannons:safezones/tutorial] run function cannons:lightfill2
execute as @e[type=marker,tag=ImpactMarker,scores={CmdData=3}] at @s unless entity @s[predicate=cannons:safezones/island] unless entity @s[predicate=cannons:safezones/tutorial] run function cannons:afterdamage
execute as @e[type=marker,tag=ImpactMarker,scores={CmdData=3}] at @s unless entity @s[predicate=cannons:safezones/island] if entity @s[predicate=cannons:safezones/tutorial] run function cannons:afterdamagetutorial

kill @e[type=marker,tag=ImpactMarker,scores={CmdData=3..}]