execute if score $OrangeKills BalanceScore > $PurpleKills BalanceScore store result score $KillThreshold BalanceScore run scoreboard players get $OrangeKills BalanceScore

execute if score $PurpleKills BalanceScore > $OrangeKills BalanceScore store result score $KillThreshold BalanceScore run scoreboard players get $PurpleKills BalanceScore

scoreboard players remove $KillThreshold BalanceScore 4

scoreboard players set $PVPbal BalanceScore 0
execute if score $PurpleKills BalanceScore < $KillThreshold BalanceScore run scoreboard players set $PVPbal BalanceScore 1
execute if score $OrangeKills BalanceScore < $KillThreshold BalanceScore run scoreboard players set $PVPbal BalanceScore 2