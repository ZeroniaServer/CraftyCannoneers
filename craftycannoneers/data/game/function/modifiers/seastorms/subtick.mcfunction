advancement revoke @s only game:subtick
execute unless score $subticked CmdData matches 1 as @e[type=lightning_bolt] at @s run function game:modifiers/seastorms/reallightning
scoreboard players set $subticked CmdData 1