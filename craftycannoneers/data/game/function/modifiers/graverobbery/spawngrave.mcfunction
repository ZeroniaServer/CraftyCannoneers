#> Break any previous unopened graves owned by this player
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @e[type=hopper_minecart,tag=grave,tag=!Opened,predicate=game:matches_uuid] on vehicle at @s run function game:modifiers/graverobbery/breakgrave
execute as @e[type=hopper_minecart,tag=grave,tag=Looted,predicate=game:matches_uuid] on vehicle at @s run function game:modifiers/graverobbery/breakgrave

#> Place correct location
execute summon marker run function game:modifiers/graverobbery/place

#> Name grave
scoreboard players operation @e[type=hopper_minecart,tag=grave,tag=new,limit=1] playerUUID = @s playerUUID
tag @s add self
setblock ~ 256 ~ oak_sign{front_text:{messages:[[{translate:"space.-8"},{text:"\uE025",color:"#7b7b00"},{translate:"space.-169"},{translate:"chest.grave",with:[{selector:"@a[tag=self,limit=1]",color:"#a9a900"}],color:"#a9a900",bold:true,underlined:true},{translate:"space.-4096"}],{text:""},{text:""},{text:""}]}}
data modify entity @e[type=hopper_minecart,tag=grave,tag=new,limit=1] CustomName set from block ~ 256 ~ front_text.messages[0]
setblock ~ 256 ~ air
tag @s remove self
execute as @e[type=hopper_minecart,tag=grave,tag=new,limit=1] at @s positioned ~ ~0.1 ~ if predicate game:located_water run tag @s add water
execute as @e[type=hopper_minecart,tag=grave,tag=new,limit=1] at @s run function game:modifiers/graverobbery/spawneffect

#> Copy random item data to passenger marker
execute as @e[type=marker,tag=gravedata,tag=new,limit=1] run function game:modifiers/graverobbery/transfer