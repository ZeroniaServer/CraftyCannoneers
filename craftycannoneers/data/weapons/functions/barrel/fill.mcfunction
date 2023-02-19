execute unless score @s CmdData matches 10.. run clear @a[tag=clicker,limit=1] gunpowder 1
execute unless score @s CmdData matches 10.. run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute unless score @s CmdData matches 10.. run scoreboard players add @s CmdData 1

item replace entity @s[scores={CmdData=0}] armor.head with mooshroom_spawn_egg{CustomModelData:1}
item replace entity @s[scores={CmdData=1}] armor.head with mooshroom_spawn_egg{CustomModelData:2}
item replace entity @s[scores={CmdData=2}] armor.head with mooshroom_spawn_egg{CustomModelData:3}
item replace entity @s[scores={CmdData=3}] armor.head with mooshroom_spawn_egg{CustomModelData:4}
item replace entity @s[scores={CmdData=4}] armor.head with mooshroom_spawn_egg{CustomModelData:5}
item replace entity @s[scores={CmdData=5}] armor.head with mooshroom_spawn_egg{CustomModelData:6}
item replace entity @s[scores={CmdData=6}] armor.head with mooshroom_spawn_egg{CustomModelData:7}
item replace entity @s[scores={CmdData=7}] armor.head with mooshroom_spawn_egg{CustomModelData:8}
item replace entity @s[scores={CmdData=8}] armor.head with mooshroom_spawn_egg{CustomModelData:9}
item replace entity @s[scores={CmdData=9}] armor.head with mooshroom_spawn_egg{CustomModelData:10}
item replace entity @s[scores={CmdData=10}] armor.head with mooshroom_spawn_egg{CustomModelData:11}