scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=HitSpotted] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:destroy_weakpoint
execute if entity @s[tag=HitSpotted] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Orange] ["",{"selector":"@s"},{"text":" destroyed an exposed weakpoint!","color":"dark_aqua"}]
execute unless entity @s[tag=HitSpotted] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Orange] ["",{"selector":"@s"},{"text":" destroyed an unexposed weakpoint. No bonus damage dealt.","color":"dark_aqua"}]
tag @s remove HitWeakpointOrange
scoreboard players reset $tempuuid playerUUID