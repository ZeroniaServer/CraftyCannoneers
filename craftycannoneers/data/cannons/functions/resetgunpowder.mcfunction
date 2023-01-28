scoreboard players set @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] CmdData 0
scoreboard players set @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] CmdData 0
tag @e[type=villager,distance=..2,tag=CannonVMain,tag=Charged,tag=Tutorial] remove Charged
item replace entity @e[type=armor_stand,tag=GPDispL,distance=..2,limit=1,sort=nearest] armor.head with air
item replace entity @e[type=armor_stand,tag=GPDispR,distance=..2,limit=1,sort=nearest] armor.head with air