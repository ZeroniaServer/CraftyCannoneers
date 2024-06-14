scoreboard players set $min MVPcannon 2147483647
scoreboard players operation $min MVPcannon < @a[tag=DamageMVP] MVPcannon
execute as @a[tag=DamageMVP] if score @s MVPcannon = $min MVPcannon unless score @s MVPcannon matches 0 run tag @s add CannonMVP
scoreboard players reset $min MVPcannon
tag @a[tag=DamageMVP] remove DamageMVP