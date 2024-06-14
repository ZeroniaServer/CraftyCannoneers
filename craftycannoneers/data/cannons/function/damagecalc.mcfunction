scoreboard players add @s CmdData 1

execute at @s[tag=HitWeakpointOrange,tag=!WeakpointAnnounced] run function cannons:hitweakpointorange
execute at @s[tag=HitWeakpointPurple,tag=!WeakpointAnnounced] run function cannons:hitweakpointpurple
execute at @s[tag=HitWeakpointFake,tag=!WeakpointAnnounced] run function cannons:hitweakpointfake

execute at @s[scores={CmdData=3},predicate=!cannons:safezones/island,predicate=!cannons:safezones/lobby] run function cannons:lightfill2
execute at @s[scores={CmdData=3},predicate=!cannons:safezones/island,predicate=!cannons:safezones/lobby,predicate=!cannons:safezones/tutorial] run function cannons:afterdamage
execute at @s[scores={CmdData=3},predicate=!cannons:safezones/island,predicate=!cannons:safezones/lobby,predicate=cannons:safezones/tutorial] run function cannons:afterdamagetutorial

#> Remount nearby Crabs/Sharks
execute at @s[scores={CmdData=3}] as @e[type=cat,tag=CrabVehicle,tag=dismounted,distance=..10] run function game:modifiers/crabs/remount
execute at @s[scores={CmdData=3}] as @e[type=cod,tag=NewVCod,tag=dismounted,distance=..10] run function game:modifiers/sharks/remount

kill @s[scores={CmdData=3..}]