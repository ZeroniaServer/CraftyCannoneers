#> Find whether the Crab is targetting the wrong team and fix it if so
scoreboard players set $wrongcrabatk CmdData 0
execute on vehicle if entity @s[tag=Orange] on controller if entity @s[type=endermite] on target store result score $wrongcrabatk CmdData if entity @s[team=!Purple]
execute on vehicle if entity @s[tag=Purple] on controller if entity @s[type=endermite] on target store result score $wrongcrabatk CmdData if entity @s[team=!Orange]
execute if score $wrongcrabatk CmdData matches 1 on vehicle if entity @s[tag=Orange] on controller run damage @s 0.1 bad_respawn_point by @a[team=Purple,limit=1,sort=nearest,distance=..5]
execute if score $wrongcrabatk CmdData matches 1 on vehicle if entity @s[tag=Purple] on controller run damage @s 0.1 bad_respawn_point by @a[team=Orange,limit=1,sort=nearest,distance=..5]

#> Pinch nearby players
execute on vehicle if entity @s[team=!Purple,team=!Orange] run tag @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=!spectator,distance=..1,limit=1,sort=nearest] add victim
execute on vehicle if entity @s[team=Purple] run tag @a[team=Orange,gamemode=!spectator,distance=..1,limit=1,sort=nearest] add victim
execute on vehicle if entity @s[team=Orange] run tag @a[team=Purple,gamemode=!spectator,distance=..1,limit=1,sort=nearest] add victim
execute on vehicle run scoreboard players operation @a[tag=victim,limit=1] KillerUUID = @s KillerUUID
execute on vehicle run damage @a[tag=victim,limit=1] 1.5 wither_skull by @s
execute if entity @a[tag=victim,limit=1] unless entity @s[tag=hasitem] run function game:modifiers/crabs/steal
tag @a[tag=victim,limit=1] remove victim