execute at @s[tag=!Picked] run function game:modifiers/lostcargo/picklocation
execute at @s[tag=!HasType] run function game:modifiers/lostcargo/picktype

scoreboard players add @s[tag=Picked] CmdData 1
execute at @s[tag=Picked,scores={CmdData=14..}] run function game:modifiers/lostcargo/summon