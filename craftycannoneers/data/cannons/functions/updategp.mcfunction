item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=..0}] armor.head with air
item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=1}] armor.head with diamond_hoe{CustomModelData:2}
item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=2}] armor.head with diamond_hoe{CustomModelData:3}
item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=3}] armor.head with diamond_hoe{CustomModelData:4}
item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=4}] armor.head with diamond_hoe{CustomModelData:5}
item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=5}] armor.head with diamond_hoe{CustomModelData:6}
item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=6}] armor.head with diamond_hoe{CustomModelData:7}
item replace entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7}] armor.head with diamond_hoe{CustomModelData:8}
execute as @e[type=armor_stand,tag=GPDispL,scores={CmdData=1..}] at @s run tag @e[type=villager,tag=CannonVMain,sort=nearest,limit=1,distance=..2] add Charged
execute as @e[type=armor_stand,tag=GPDispL,scores={CmdData=..0}] at @s unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=1..},distance=..2,limit=1,sort=nearest] run tag @e[type=villager,tag=CannonVMain,sort=nearest,limit=1,distance=..2] remove Charged

item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=..0}] armor.head with air
item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=1}] armor.head with diamond_hoe{CustomModelData:9}
item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=2}] armor.head with diamond_hoe{CustomModelData:10}
item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=3}] armor.head with diamond_hoe{CustomModelData:11}
item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=4}] armor.head with diamond_hoe{CustomModelData:12}
item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=5}] armor.head with diamond_hoe{CustomModelData:13}
item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=6}] armor.head with diamond_hoe{CustomModelData:14}
item replace entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7}] armor.head with diamond_hoe{CustomModelData:15}
execute as @e[type=armor_stand,tag=GPDispR,scores={CmdData=1..}] at @s run tag @e[type=villager,tag=CannonVMain,sort=nearest,limit=1,distance=..2] add Charged
execute as @e[type=armor_stand,tag=GPDispR,scores={CmdData=..0}] at @s unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=1..},distance=..2,limit=1,sort=nearest] run tag @e[type=villager,tag=CannonVMain,sort=nearest,limit=1,distance=..2] remove Charged