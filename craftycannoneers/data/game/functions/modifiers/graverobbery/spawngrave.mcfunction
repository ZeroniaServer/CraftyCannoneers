#> Pick 5 random items
scoreboard players set $chooseinv CmdData 5
function inventory:randomizer/choose

#> Set correct location
data modify storage craftycannoneers:death Pos set from entity @s LastDeathLocation.pos
execute summon marker run function game:modifiers/graverobbery/place

#> Name grave
setblock ~ 256 ~ oak_sign
tag @s add self
data merge block ~ 256 ~ {Text2:'["",{"translate":"chest.grave","with":[{"selector":"@a[tag=self,limit=1]"}],"color":"dark_gray","bold":true,"underlined":true}]'}
tag @s remove self
data modify entity @e[type=hopper_minecart,tag=grave,tag=new,limit=1] CustomName set from block ~ 256 ~ Text2
setblock ~ 256 ~ air
tag @e[type=hopper_minecart,tag=grave,tag=new,limit=1] remove new

#> Copy random item data to passenger marker
execute as @e[type=marker,tag=gravedata,tag=new,limit=1] run function game:modifiers/graverobbery/transfer

#> TODO visuals, sounds, animations