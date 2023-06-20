execute on target if entity @s[tag=self] run scoreboard players set $foundinteraction CmdData 1
execute unless score $foundinteraction CmdData matches 1 run return 0

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