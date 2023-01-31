#> Hurt Detection
execute store result score @s CmdData run data get entity @s Health
tellraw @a [{"score":{"name":"@s","objective":"CmdData"}}]

tag @e[type=armor_stand,tag=TDAS,distance=..1,limit=1,sort=nearest] add DummyHurtAnim
scoreboard players reset @e[type=armor_stand,tag=TDAS,distance=..1,limit=1,sort=nearest,scores={CmdData=1..}] CmdData

#> Update Health
function tutorial:trainingdummies/updatehealth