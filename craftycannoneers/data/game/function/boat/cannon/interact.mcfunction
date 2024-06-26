#> Load gunpowder
scoreboard players set $gpfull CmdData 0
execute if predicate cannons:holdgp on vehicle if score @s PowerM matches 5.. run scoreboard players set $gpfull CmdData 1
execute if predicate cannons:holdgp on vehicle unless score @s PowerM matches 5.. run function game:boat/cannon/loadgunpowder

execute if predicate cannons:holdgp if entity @s[team=Orange] on vehicle unless score @s PowerM matches 5.. run execute as @e[type=slime,tag=Spotted,tag=Weakpoint,tag=Orange,scores={spotting=80..}] run scoreboard players set @s spotting 80
execute if predicate cannons:holdgp if entity @s[team=Purple] on vehicle unless score @s PowerM matches 5.. run execute as @e[type=slime,tag=Spotted,tag=Weakpoint,tag=Purple,scores={spotting=80..}] run scoreboard players set @s spotting 80

#> Load cannonballs
execute if predicate cannons:holdcb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 1
execute if predicate cannons:holdfb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 2
execute if predicate cannons:holdcbc on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 3
execute if predicate cannons:holdgcb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 4
execute if predicate cannons:holdccb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 5
execute if predicate cannons:holdbcb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 6
execute if predicate cannons:holdpcb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 7
execute if predicate cannons:holdtcb unless predicate cannons:holdtcb_red on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 8
execute if predicate cannons:holdgocb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 9
execute if predicate cannons:holdcocb on vehicle run scoreboard players set @s[tag=!FireCannon] CannonID 10
scoreboard players operation $temp playerUUID = @s playerUUID
execute on vehicle run scoreboard players operation @s[scores={CannonID=1..},tag=!FireCannon] playerUUID = $temp playerUUID
execute unless predicate cannons:holdtcb_red unless predicate cannons:holdgp on vehicle if entity @s[scores={CannonID=1..},tag=!FireCannon] on passengers run scoreboard players set @s PowerM 0
execute unless predicate cannons:holdtcb_red unless predicate cannons:holdgp on vehicle run tag @s[scores={CannonID=1..},tag=!FireCannon] add FireCannon
execute if entity @s[team=Orange] unless predicate cannons:holdtcb_red unless predicate cannons:holdgp on vehicle run execute as @e[type=slime,tag=Spotted,tag=Weakpoint,tag=Orange,scores={spotting=80..}] run scoreboard players set @s spotting 80
execute if entity @s[team=Purple] unless predicate cannons:holdtcb_red unless predicate cannons:holdgp on vehicle run execute as @e[type=slime,tag=Spotted,tag=Weakpoint,tag=Purple,scores={spotting=80..}] run scoreboard players set @s spotting 80

execute on vehicle if entity @s[tag=FireCannon] unless score @s CannonID matches 8 on passengers run scoreboard players add @s[type=player,predicate=!cannons:holdgp,predicate=!cannons:holdtcb] MVPcannon 1

#> Consume items
tag @s[predicate=cannons:holdgp] add HoldGP
tag @s[predicate=cannons:holdtcb] add HoldTCB
execute unless score $gpfull CmdData matches 1 run item modify entity @s[gamemode=!creative,tag=HoldGP] weapon.mainhand game:reducecount
tag @s[tag=HoldTCB] remove replacetracer
loot replace entity @s[tag=HoldTCB] weapon.mainhand loot cannons:tracer_red
tag @s[tag=HoldTCB] add redTracer
execute on vehicle if entity @s[tag=FireCannon] on passengers run item replace entity @s[type=player,gamemode=!creative,tag=!HoldGP,tag=!HoldTCB] weapon.mainhand with air
tag @s[tag=HoldGP] remove HoldGP
tag @s[tag=HoldTCB] remove HoldTCB