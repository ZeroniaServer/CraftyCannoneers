particle splash ~ ~0.5 ~ 0.1 0.2 0.1 0.1 20 normal @a[team=!Lobby]
particle item ender_eye{CustomModelData:2} ~ ~-0.7 ~ 0.1 0.1 0.1 0.1 15 normal @a[team=!Lobby]
scoreboard players operation $tempuuid playerUUID = @s playerUUID
kill @e[type=marker,tag=BubbleSource,predicate=game:matches_uuid,limit=1]
kill @s