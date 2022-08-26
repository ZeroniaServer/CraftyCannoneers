scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Orange] ["","\n",{"selector":"@s"},{"text":" destroyed an ","color":"aqua"},{"text":"exposed","underlined":true,"color":"green"},{"text":" Weakpoint!","color":"aqua"},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Purple] ["","\n",{"selector":"@s"},{"text":" destroyed one of your Weakpoints!","color":"red"},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run scoreboard players reset @s HitmarkerTimer
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run scoreboard players set @s HitmarkerType 1
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] run scoreboard players add @s CriticalDamage 85
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[tag=!HitSpotted,tag=!WeakpointAnnounced] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run tellraw @a[team=Orange] ["","\n",{"selector":"@s"},{"text":" destroyed an ","color":"aqua"},{"text":"unexposed","underlined":true,"color":"red"},{"text":" Weakpoint! No bonus damage dealt.","color":"aqua"},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. run function game:shipweakpoint/spawnnewpurple
tag @s add WeakpointAnnounced
scoreboard players set $OrangeWPDelay CmdData 1
tag @e[type=marker,tag=ImpactMarker,distance=0.1..1] add WeakpointAnnounced
tag @s remove HitWeakpointOrange
scoreboard players reset $tempuuid playerUUID