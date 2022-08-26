scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Purple] ["","\n",{"selector":"@s"},{"text":" destroyed an ","color":"aqua"},{"text":"exposed","underlined":true,"color":"green"},{"text":" Weakpoint!","color":"aqua"},"\n"]
execute if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Orange] ["","\n",{"selector":"@s"},{"text":" destroyed one of your Weakpoints!","color":"red"},"\n"]
execute if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] run scoreboard players add @s CriticalDamage 85
execute if entity @s[tag=!HitSpotted,tag=!WeakpointAnnounced] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Purple] ["","\n",{"selector":"@s"},{"text":" destroyed an ","color":"aqua"},{"text":"unexposed","underlined":true,"color":"dark_red"},{"text":" Weakpoint! No bonus damage dealt.","color":"aqua"},"\n"]
function game:shipweakpoint/spawnneworange
tag @s add WeakpointAnnounced
tag @e[type=marker,tag=ImpactMarker,distance=0.1..1] add WeakpointAnnounced
tag @s remove HitWeakpointPurple
scoreboard players reset $tempuuid playerUUID