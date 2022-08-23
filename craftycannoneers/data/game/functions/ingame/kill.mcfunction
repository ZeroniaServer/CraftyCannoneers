effect give @s[scores={gappleTimer=0}] regeneration 4 2 true
scoreboard players add @s MVPkill 1
advancement grant @s only tutorial:zzzunlockables/killplayer
execute if entity @s[team=Orange] run scoreboard players add $OrangeKills BalanceScore 1
execute if entity @s[team=Purple] run scoreboard players add $PurpleKills BalanceScore 1
function balancing:pvpskillcheck
scoreboard players reset @s kill