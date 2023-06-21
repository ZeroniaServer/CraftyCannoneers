execute on target if entity @s[tag=self] run scoreboard players set $foundinteraction CmdData 1
execute unless score $foundinteraction CmdData matches 1 run return 0

#> Tags for interacting with Cannons
execute if entity @s[tag=CannonVLeft,tag=!GPLocked] run tag @a[limit=1,tag=self] add FillLeft
execute if entity @s[tag=CannonVRight,tag=!GPLocked] run tag @a[limit=1,tag=self] add FillRight
execute if entity @s[tag=CannonVMain,tag=Charged,tag=!GPLocked] run tag @a[limit=1,tag=self] add FillCB

#> Tag for holding Gunpowder
tag @a[limit=1,tag=self,tag=FillLeft,predicate=cannons:holdgp] add HoldGP
tag @a[limit=1,tag=self,tag=FillRight,predicate=cannons:holdgp] add HoldGP

#> Tag for holding Cannonballs
#Normal
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdcb] add HoldCB
#Hot
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdfb] add HoldFB
#Cluster
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdcbc] add HoldCBC
#Gas
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdgcb] add HoldGCB
#Chain
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdccb] add HoldCCB
#Bouncy
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdbcb] add HoldBCB
#Player
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdpcb] add HoldPCB
#Tracer
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdtcb] add HoldTCB
#Tracer (Red)
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdtcb_red] add RedTCB
#Golden
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdgocb] add HoldGOCB
#Copper
tag @a[limit=1,tag=self,tag=FillCB,predicate=cannons:holdcocb] add HoldCOCB

#> Cannon Claim tag 
execute at @s as @a[limit=1,tag=self,tag=FillCB] run function cannons:checkowner
execute at @s as @a[limit=1,tag=self,tag=FillLeft,tag=HoldGP] run function cannons:checkowner
execute at @s as @a[limit=1,tag=self,tag=FillRight,tag=HoldGP] run function cannons:checkowner

#> Credits
execute if entity @s[tag=BlockyCredit] on target at @s run function lobby:credit/blocky
execute if entity @s[tag=CarlCredit] on target at @s run function lobby:credit/carl
execute if entity @s[tag=EvtemaCredit] on target at @s run function lobby:credit/evtema
execute if entity @s[tag=KlarCredit] on target at @s run function lobby:credit/klar
execute if entity @s[tag=StuffyCredit] on target at @s run function lobby:credit/stuffy
execute if entity @s[tag=YZEROCredit] on target at @s run function lobby:credit/yzero
execute if entity @s[tag=ZeroniaCredit] on target at @s run function lobby:credit/zeronia

#> Locked Chest Warns
execute if entity @s[tag=notifylock] on target run tellraw @s ["",{"translate":"chest.skeleton.warn","color":"red","with":[{"translate":"chest.skeleton","underlined":true,"color":"dark_red"},{"translate":"item.skeleton_key","color":"dark_aqua"}]}]

#> Easter Eggs
execute at @s[tag=Parrot] unless score $parrotpet CmdData matches 1.. on target run function lobby:easteregg/parrot
execute if entity @s[tag=Planetary] on target run advancement grant @s only tutorial:eastereggs/planetary
execute if entity @s[tag=Snowman] unless entity @e[type=armor_stand,tag=EasterEgg,tag=SnowmanDeco,limit=1] run summon armor_stand -85 -31 -31 {Rotation:[-45.0f,0.0f],Tags:["EasterEgg","SnowmanDeco"],Invulnerable:1b,Marker:1b,NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1b,tag:{CustomModelData:66}}]}
execute at @s[tag=Goldy] unless score $goldypet CmdData matches 1.. on target run function lobby:easteregg/goldy

#> Boats
execute if entity @s[tag=boatoccupant] on vehicle run ride @a[tag=self,limit=1] mount @s[tag=!Sailing]

#> Boat Cannon
execute if score $BoatCannons CmdData matches 1 if entity @s[tag=BoatCannon] on vehicle on vehicle on vehicle if entity @s[tag=!FireCannon] on passengers if entity @s[type=player,tag=self] run function game:boat/cannon/interact