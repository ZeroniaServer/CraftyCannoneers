#Prevents endermite despawning (extremely rare but anyway)
execute unless score @s Lifetime = @s Lifetime run scoreboard players set @s Lifetime -2147483648
scoreboard players add @s Lifetime 1
data merge entity @s[scores={Lifetime=2399..}] {Lifetime:-2147483648}
scoreboard players set @s[scores={Lifetime=2399..}] Lifetime -2147483648