advancement revoke @s only lobby:pettheparrot
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] run scoreboard players add @s parrotpet 1

execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] run tellraw @s[scores={parrotpet=1}] {"text":"The parrot thanks you for your kindness...","italic":true,"color":"light_purple"}
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] run tellraw @s[scores={parrotpet=10}] {"text":"The parrot appreciates you...","italic":true,"color":"light_purple"}
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] run tellraw @s[scores={parrotpet=20}] {"text":"The parrot would like to be your best friend...","italic":true,"color":"light_purple"}
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] run tellraw @s[scores={parrotpet=30}] {"text":"The parrot wishes for this moment to last forever...","italic":true,"color":"light_purple"}
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] run tellraw @s[scores={parrotpet=50}] {"text":"The parrot loves you.","italic":true,"color":"light_purple"}
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..,parrotpet=50}] run advancement grant @s only tutorial:eastereggs/parrot

execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] at @e[type=armor_stand,tag=Parrot,limit=1] run playsound parrot master @a ~ ~ ~ 0.4 1
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] at @e[type=armor_stand,tag=Parrot,limit=1] run particle heart ~ ~0.3 ~ 0.2 0.2 0.2 0.1 4
execute unless entity @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] run scoreboard players set @e[type=armor_stand,tag=Parrot] CmdData 1