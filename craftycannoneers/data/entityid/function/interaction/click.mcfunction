tag @s add self
execute as @e[type=interaction] run function entityid:interaction/trycheck
tag @s remove self
scoreboard players reset $foundinteraction CmdData
advancement revoke @s only entityid:interaction