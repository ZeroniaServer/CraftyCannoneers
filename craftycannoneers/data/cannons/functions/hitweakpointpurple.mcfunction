scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=HitSpotted] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Purple] ["","\n",{"selector":"@s"},{"text":" destroyed an ","color":"aqua"},{"text":"exposed","underlined":true,"color":"green"},{"text":" weakpoint!","color":"aqua"},"\n"]
execute if entity @s[tag=HitSpotted] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=HitSpotted] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run scoreboard players set @s HitmarkerType 1
execute unless entity @s[tag=HitSpotted] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Purple] ["","\n",{"selector":"@s"},{"text":" destroyed an ","color":"aqua"},{"text":"unexposed","underlined":true,"color":"dark_red"},{"text":" weakpoint! No bonus damage dealt.","color":"aqua"},"\n"]
tag @s remove HitWeakpointPurple
scoreboard players reset $tempuuid playerUUID