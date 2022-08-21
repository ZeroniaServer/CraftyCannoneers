#> Hurt Detection
execute store result score @s CmdData run data get entity @s Health
execute store result score @s eyeclick run data get entity @s HurtTime

execute if score @s eyeclick matches 10 run tag @e[type=armor_stand,tag=TDAS,distance=..1,limit=1,sort=nearest] add DummyHurtAnim
execute if score @s eyeclick matches 10 run tag @s add DummyHurt
execute if score @s eyeclick matches 10 run scoreboard players reset @e[type=armor_stand,tag=TDAS,distance=..1,limit=1,sort=nearest,scores={CmdData=1..}] CmdData

#> Update Health
execute at @s[tag=DummyHurt] run function tutorial:trainingdummies/updatehealth