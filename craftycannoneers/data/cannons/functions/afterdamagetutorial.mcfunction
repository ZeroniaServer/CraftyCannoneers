execute if entity @s[tag=!Hit1,predicate=cannons:ships/tutorial] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute if entity @s[tag=!Hit1,predicate=cannons:ships/tutorial] as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=!Hit1,predicate=cannons:ships/tutorial] as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[predicate=cannons:ships/tutorial] run scoreboard players reset $hitmarkuuid
execute if entity @s[predicate=cannons:ships/tutorial] if score $shipstatus CmdData matches 0 run scoreboard players set $shipstatus CmdData 1
execute if entity @s[predicate=cannons:ships/tutorial] if score $shiptimer CmdData matches 0 run scoreboard players add $shiptimer CmdData 1
kill @s