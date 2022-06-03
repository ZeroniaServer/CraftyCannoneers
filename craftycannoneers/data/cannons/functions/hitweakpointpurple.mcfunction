scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=Spotted] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:destroy_weakpoint
execute if entity @s[tag=Spotted] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Purple] ["",{"selector":"@s"},{"text":" destroyed an exposed weakpoint!","color":"dark_aqua"}]
execute unless entity @s[tag=Spotted] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Purple] ["",{"selector":"@s"},{"text":" destroyed an unexposed weakpoint. No bonus damage dealt.","color":"dark_aqua"}]
tag @s remove HitWeakpointPurple
scoreboard players reset $tempuuid playerUUID