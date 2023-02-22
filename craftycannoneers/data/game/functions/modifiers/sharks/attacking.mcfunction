scoreboard players add @s CmdData 1
item replace entity @s[scores={CmdData=1}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:88}
item replace entity @s[scores={CmdData=3}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:89}
item replace entity @s[scores={CmdData=5}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:90}
item replace entity @s[scores={CmdData=7}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:89}
item replace entity @s[scores={CmdData=9}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:88}
#Placeholder sound probably
execute at @s[scores={CmdData=1}] run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 0.5 1.1
item replace entity @s[scores={CmdData=11}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:87}
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1.5 run effect give @a[distance=..1.5,limit=1,sort=nearest] instant_damage 1 1 true
execute at @s[scores={CmdData=9}] if predicate game:tooth_chance positioned ^ ^ ^1.5 if entity @a[distance=..1.5,limit=1] at @s run function game:modifiers/sharks/losttooth
execute at @s[scores={CmdData=9}] run particle bubble ^ ^ ^2 0 0 0 0.1 10 force
tag @s[scores={CmdData=45..}] remove Attacking