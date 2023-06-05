#> Set correct location
data modify storage craftycannoneers:death Pos set from entity @s LastDeathLocation.pos
execute summon marker run function game:modifiers/graverobbery/place

#> Name grave
tag @s add self
setblock ~ 256 ~ oak_sign{front_text:{messages:['["",{"translate":"chest.grave","with":[{"selector":"@a[tag=self,limit=1]"}],"color":"dark_gray","bold":true,"underlined":true}]','{"text":""}','{"text":""}','{"text":""}']}}
data modify entity @e[type=hopper_minecart,tag=grave,tag=new,limit=1] CustomName set from block ~ 256 ~ front_text.messages[0]
setblock ~ 256 ~ air
tag @s remove self
tag @e[type=hopper_minecart,tag=grave,tag=new,limit=1] remove new

#> Copy random item data to passenger marker
execute as @e[type=marker,tag=gravedata,tag=new,limit=1] run function game:modifiers/graverobbery/transfer

#> TODO visuals, sounds, animations