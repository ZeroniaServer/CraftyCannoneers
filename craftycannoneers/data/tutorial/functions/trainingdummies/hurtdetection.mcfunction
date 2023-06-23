#> Hurt Detection
execute store result score @s CmdData run data get entity @s Health

tag @e[type=item_display,tag=TDDisplay,distance=..1,limit=1,sort=nearest] add DummyHurtAnim
scoreboard players reset @e[type=item_display,tag=TDDisplay,distance=..1,limit=1,sort=nearest,scores={CmdData=1..}] CmdData

#> Update Health
function tutorial:trainingdummies/updatehealth