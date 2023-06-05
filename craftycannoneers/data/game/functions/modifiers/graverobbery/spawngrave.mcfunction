#> Pick 5 random items
scoreboard players set $chooseinv CmdData 5
function inventory:randomizer/choose

#> Summon grave chest
summon hopper_minecart ~ ~ ~ {Tags:["grave","chest","GraveEntity","new"],LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"chest.grave","color":"dark_gray","bold":true,"underlined":true}',Passengers:[{id:"minecraft:marker",Tags:["gravedata","GraveEntity","new"]}]}

#> Name grave
setblock ~ 256 ~ oak_sign
tag @s add self
data merge block ~ 256 ~ {Text2:'["",{"translate":"chest.grave.possessive","with":[{"selector":"@a[tag=self,limit=1]"}],"color":"dark_gray","bold":true,"underlined":true}]'}
tag @s remove self
data modify entity @e[type=hopper_minecart,tag=grave,tag=new,limit=1] CustomName set from block ~ 256 ~ Text2
setblock ~ 256 ~ air
tag @e[type=hopper_minecart,tag=grave,tag=new,limit=1] remove new

#> Copy random item data to passenger marker
execute as @e[type=marker,tag=gravedata,tag=new,limit=1] run function game:modifiers/graverobbery/transfer

#> TODO visuals, sounds, animations