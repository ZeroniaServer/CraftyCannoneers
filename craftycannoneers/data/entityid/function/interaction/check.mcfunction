execute on target if entity @s[tag=self] run scoreboard players set $foundinteraction CmdData 1
execute unless score $foundinteraction CmdData matches 1 run return 0

#> Settings Map
execute if entity @s[tag=TimeIcon] on target run trigger modisigns set 7853
execute if entity @s[tag=HPIcon] on target run trigger modisigns set 3384
execute if entity @s[tag=DefaultsIcon] on target run trigger modisigns set 6497
execute if entity @s[tag=ConfirmIcon] on target run trigger modisigns set 5732
execute if entity @s[tag=ModiIcon] if score $ModiMapActive CmdData matches 0 on target run trigger modisigns set 9152
execute if entity @s[tag=ModiIcon] if score $ModiMapActive CmdData matches 1 on target run trigger modisigns set 9153
execute if entity @s[tag=DaytimeIcon] on target run trigger modisigns set 2049
execute if entity @s[tag=NoTracersIcon] on target run trigger modisigns set 17863
execute if entity @s[tag=WildlifeIcon] on target run trigger modisigns set 59636
execute if entity @s[tag=SeaStormsIcon] on target run trigger modisigns set 71845
execute if entity @s[tag=LostCargoIcon] on target run trigger modisigns set 256652
execute if entity @s[tag=GraveRobberyIcon] on target run trigger modisigns set 29013
execute if entity @s[tag=BoatCannonsIcon] on target run trigger modisigns set 50317
execute if entity @s[tag=CancelMatch] on target if score @s clickcooldown matches 0 run trigger cancelMatch set 1
execute if entity @s[tag=SettingsInteraction] run return 0

#> Translator Credits
execute if entity @s[tag=TranslatorCredit] as @e[type=item_display,tag=Globe,tag=!Spin,limit=1] run function lobby:credit/translators/next
execute if entity @s[tag=TranslatorCredit] on target run advancement grant @s only tutorial:zzzunlockables/credits

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

#> Remove Cannon tags
tag @a[limit=1,tag=self] remove FillLeft
tag @a[limit=1,tag=self] remove FillRight

#> Credits
execute if entity @s[tag=BlockyCredit] on target at @s run function lobby:credit/blocky
execute if entity @s[tag=CarlCredit] on target at @s run function lobby:credit/carl
execute if entity @s[tag=EvtemaCredit] on target at @s run function lobby:credit/evtema
execute if entity @s[tag=KlarCredit] on target at @s run function lobby:credit/klar
execute if entity @s[tag=StuffyCredit] on target at @s run function lobby:credit/stuffy
execute if entity @s[tag=YZEROCredit] on target at @s run function lobby:credit/yzero
execute if entity @s[tag=ZeroniaCredit] on target at @s run function lobby:credit/zeronia

#> Blast Barrel
execute at @s[tag=BlastBarrel] if entity @a[limit=1,tag=self,predicate=cannons:holdgp] as @e[type=item_display,tag=BlastBarrel,distance=..1,sort=nearest,limit=1] at @s run function weapons:barrel/fill

#> Locked Chest Warns
execute if entity @s[tag=notifylock] on target run tellraw @s ["",{"translate":"chest.skeleton.warn","color":"red","with":[{"translate":"chest.skeleton","underlined":true,"color":"dark_red"},{"translate":"item.skeleton_key","color":"dark_aqua"}]}]

#> Easter Eggs
execute at @s[tag=Parrot] unless score $parrotpet CmdData matches 1.. on target run function lobby:easteregg/parrot
execute at @s[tag=Planetary] on target run function lobby:easteregg/planetary
execute if entity @s[tag=Snowman] unless entity @e[type=item_display,tag=EasterEgg,tag=SnowmanDeco,limit=1] run summon item_display -85 -28 -31 {width:1f,height:2f,Rotation:[-45.0f,0.0f],Tags:["EasterEgg","SnowmanDeco"],item_display:"head",item:{id:"diamond_hoe",count:1,components:{"custom_model_data":{floats:[66.0f]}}},transformation:{translation:[0.0f,-3.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.625f,0.625f,0.625f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:10,Passengers:[{id:"item_display",Rotation:[45.0f,0.0f],Tags:["EasterEgg","Carrot"],width:1f,height:2f,item_display:"head",item:{id:"golden_carrot",count:1},transformation:{translation:[0.0f,-3.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1f,1f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:10}]}
execute at @s[tag=Goldy] unless score $goldypet CmdData matches 1.. on target run function lobby:easteregg/goldy

#> Boats
execute if entity @s[tag=boatoccupant] on vehicle run ride @a[tag=self,limit=1] mount @s[tag=!Sailing,tag=!motionlock,tag=!kill]
execute if entity @s[tag=boatoccupant] on vehicle if entity @s[tag=motionlock,tag=!kill] on passengers run ride @a[tag=self,limit=1] mount @s[tag=boatoccupant]

#> Boat Cannon
execute if score $BoatCannons CmdData matches 1 if entity @s[tag=BoatCannon] on vehicle on vehicle on vehicle if entity @s[tag=!FireCannon] on passengers if entity @s[type=player,tag=self] run function game:boat/cannon/interact

#> Cargo Traps
execute if entity @s[tag=CBTrap] on vehicle run function game:modifiers/lostcargo/clicktrap