#> Pick 5 random items
scoreboard players set $chooseinv CmdData 5
function inventory:randomizer/choose

#> Summon grave chest
summon hopper_minecart ~ ~ ~ {Tags:["grave","chest","GraveEntity"],LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"chest.grave","color":"dark_gray","bold":true,"underlined":true}',Passengers:[{id:"minecraft:marker",Tags:["gravedata","GraveEntity","new"]}]}

#> Copy random item data to passenger marker
execute as @e[type=marker,tag=gravedata,tag=new,limit=1] run function game:modifiers/graverobbery/transfer

#> TODO visuals, sounds, animations