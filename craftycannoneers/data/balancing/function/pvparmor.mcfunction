#> Balanced
execute if score $PVPbal BalanceScore matches 0 run attribute @s armor base set 0

#> Orange too strong
execute if score $PVPbal BalanceScore matches 1 run attribute @s[team=Orange] armor base set -4
execute if score $PVPbal BalanceScore matches 1 run attribute @s[team=Purple] armor base set 0

#> Purple too strong
execute if score $PVPbal BalanceScore matches 2 run attribute @s[team=Orange] armor base set 0
execute if score $PVPbal BalanceScore matches 2 run attribute @s[team=Purple] armor base set -4