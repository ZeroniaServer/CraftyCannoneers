scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.enemy",italic:true,color:"green"},"\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{selector:"@s",color:"dark_aqua"},{translate:"weakpoint.destroyed.exposed",underlined:true,color:"dark_green"},""]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] run tellraw @a[team=Spectator] ["\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{selector:"@s",color:"dark_aqua"},{translate:"weakpoint.destroyed.exposed",underlined:true,color:"dark_green"},""]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.own",color:"red",with:[{selector:"@s",color:"red"},""]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run scoreboard players reset @s HitmarkerTimer
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run scoreboard players set @s HitmarkerType 1
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=HitSpotted,tag=!WeakpointAnnounced] run scoreboard players add @s CriticalDamage 85
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=!HitSpotted,tag=!WeakpointAnnounced] run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.enemy",italic:true,color:"green"},"\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{selector:"@s",color:"dark_aqua"},{translate:"weakpoint.destroyed.unexposed",underlined:true,color:"red"},{translate:"weakpoint.destroyed.no_bonus",color:"red"}]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=!HitSpotted,tag=!WeakpointAnnounced] run tellraw @a[team=Spectator] ["\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{selector:"@s",color:"dark_aqua"},{translate:"weakpoint.destroyed.unexposed",underlined:true,color:"red"},{translate:"weakpoint.destroyed.no_bonus",color:"dark_aqua"}]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[tag=!HitSpotted,tag=!WeakpointAnnounced] run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.own",color:"dark_aqua",with:[{selector:"@s",color:"dark_aqua"},{translate:"weakpoint.destroyed.no_bonus",color:"green"}]},"\n"]
execute if score $PurpleWPDelay CmdData matches 1.. run return fail
scoreboard players set $PurpleWPDelay CmdData 1
function game:shipweakpoint/spawnneworange
tag @s add WeakpointAnnounced
tag @e[type=marker,tag=ImpactMarker,distance=0.1..1] add WeakpointAnnounced
tag @s remove HitWeakpointPurple
scoreboard players reset $tempuuid playerUUID