execute as @e[type=marker,tag=CargoSpawn,tag=Spawned,tag=!Done] at @s run function game:modifiers/lostcargo/rise
execute as @e[type=marker,tag=BarrelSpawn,tag=!Picked] at @s run function game:modifiers/lostcargo/picklocation
execute as @e[type=marker,tag=BarrelSpawn,tag=!HasType] at @s run function game:modifiers/lostcargo/picktype

scoreboard players add @e[type=marker,tag=BarrelSpawn,tag=Picked] CmdData 1
#gunpowder
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Purple,tag=CBGunpowder,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.gunpowder","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBGunpowder","CargoEntity","Purple","barrel"]}]}]}
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Orange,tag=CBGunpowder,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.gunpowder","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBGunpowder","CargoEntity","Orange","barrel"]}]}]}
#gold
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Purple,tag=CBGold,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.gold","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBGold","CargoEntity","Purple","barrel"]}]}]}
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Orange,tag=CBGold,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.gold","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBGold","CargoEntity","Orange","barrel"]}]}]}
#weapons
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Purple,tag=CBWeapons,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.weapons","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBWeapons","CargoEntity","Purple","barrel"]}]}]}
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Orange,tag=CBWeapons,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.weapons","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBWeapons","CargoEntity","Orange","barrel"]}]}]}
#movement
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Purple,tag=CBMovement,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.movement","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBMovement","CargoEntity","Purple","barrel"]}]}]}
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Orange,tag=CBMovement,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.movement","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBMovement","CargoEntity","Orange","barrel"]}]}]}
#cannonballs
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Purple,tag=CBCannonball,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.cannonball","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBCannonball","CargoEntity","Purple","barrel"]}]}]}
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Orange,tag=CBCannonball,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.cannonball","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBCannonball","CargoEntity","Orange","barrel"]}]}]}
#boarding
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Purple,tag=CBBoarding,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.boarding","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBBoarding","CargoEntity","Purple","barrel"]}]}]}
execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,tag=Orange,tag=CBBoarding,scores={CmdData=14..}] at @s run summon item_display ~ -48 ~ {Tags:["CargoEntity","CBDisplayRoot"],Passengers:[{id:"item_display",Tags:["CargoBarrel","CargoEntity","CBDisplay"],item:{id:"diamond_hoe",Count:1,tag:{CustomModelData:114}},item_display:"fixed",Passengers:[{id:"hopper_minecart",LootTable:"chests:empty",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:air"},Invulnerable:1b,Silent:1b,Enabled:0b,CustomName:'{"translate":"cargobarrel.boarding","color":"light_purple","bold":true,"underlined":true}',Tags:["CargoHopper","CBBoarding","CargoEntity","Orange","barrel"]}]}]}

execute as @e[type=marker,tag=BarrelSpawn,tag=Picked,scores={CmdData=14..}] at @s run kill @s

scoreboard players add @e[type=item_display,tag=CargoBarrel] CmdData 1
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=1..35}] on vehicle at @s run tp @s ~ ~0.25 ~
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=1..35}] on vehicle at @s run tp @s ~ ~0.25 ~
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=1..35}] at @s run particle minecraft:bubble_column_up ~ ~ ~ 0.2 0.2 0.2 0.04 3 force @a[predicate=cannons:seeparticles]

execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=36..47}] on vehicle at @s run tp @s ~ ~-0.05 ~

execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=40}] at @s run playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1 1.2
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=40}] at @s run playsound minecraft:entity.drowned.swim master @a ~ ~ ~ 1 0.7
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=40}] at @s run particle splash ~ ~ ~ 0.2 0.2 0.2 0.1 50 force @a[predicate=cannons:seeparticles]
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=40}] at @s run particle falling_water ~ ~0.4 ~ 0.2 0.2 0.2 0.1 10 force @a[predicate=cannons:seeparticles]
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=40}] at @s run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.03 2 force @a[predicate=cannons:seeparticles]

execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=50..56}] on vehicle at @s run tp @s ~ ~0.01 ~
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=57..63}] on vehicle at @s run tp @s ~ ~-0.01 ~
execute as @e[type=item_display,tag=CargoBarrel,scores={CmdData=63..}] run scoreboard players set @s CmdData 49


execute as @e[type=item_display,tag=CBDisplay,tag=ContainerLooted] run scoreboard players add @s eyeclick 1
execute as @e[type=item_display,tag=CBDisplay,tag=ContainerLooted,scores={eyeclick=35..}] at @s run particle block stripped_spruce_log ~ ~0.4 ~ 0.1 0.2 0.1 0.1 20 force @a[predicate=cannons:seeparticles]
execute as @e[type=item_display,tag=CBDisplay,tag=ContainerLooted,scores={eyeclick=35..}] at @s run particle block barrel ~ ~ ~ 0.2 0.2 0.2 0.1 20 force @a[predicate=cannons:seeparticles]
execute as @e[type=item_display,tag=CBDisplay,tag=ContainerLooted,scores={eyeclick=35..}] at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.6 2
execute as @e[type=item_display,tag=CBDisplay,tag=ContainerLooted,scores={eyeclick=35..}] on passengers run kill @s
execute as @e[type=item_display,tag=CBDisplay,tag=ContainerLooted,scores={eyeclick=35..}] on vehicle run kill @s
execute as @e[type=item_display,tag=CBDisplay,tag=ContainerLooted,scores={eyeclick=35..}] run kill @s



#> Spawn over time
scoreboard players add $CargoTime CmdData 1
execute if score $CargoTime CmdData matches 1200 as @e[type=player,limit=1,sort=random,predicate=game:fiftyfifty] run scoreboard players set $SpawnCargo CmdData 1
execute if score $CargoTime CmdData matches 1200.. run scoreboard players reset $CargoTime CmdData
execute if score $SpawnCargo CmdData matches 1 run function game:modifiers/lostcargo/spawnpurple
execute if score $SpawnCargo CmdData matches 1 run function game:modifiers/lostcargo/spawnorange
execute if score $SpawnCargo CmdData matches 1 run scoreboard players reset $SpawnCargo CmdData
