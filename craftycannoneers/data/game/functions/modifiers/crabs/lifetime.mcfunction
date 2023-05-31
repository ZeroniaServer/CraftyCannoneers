#Prevents endermite despawning (extremely rare but anyway)
data merge entity @s[nbt={Lifetime:0}] {Lifetime:-2147483648}
execute on passengers run data merge entity @s[type=endermite,nbt={Lifetime:0}] {Lifetime:-2147483648}