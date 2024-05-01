scoreboard players operation @s CalcAir2 -= @s CalcAir1
scoreboard players operation @s CalcFire2 -= @s CalcAir1
execute if score @s CalcFire2 matches 1.. run scoreboard players operation @s CalcAir2 += @s CalcFire2
execute unless score @s CalcAir2 matches 0.. if score @s click matches 1.. run tag @s add failsafe
scoreboard players operation @s[tag=failsafe] CalcAir2 = @s click
scoreboard players operation @s CalcSail1 -= @s CalcSail2

#> ORANGE
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple,tag=!cluster] run scoreboard players add $CurrentDamage CmdData 14
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID

#mvp tracker - orange
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

#Chain effect
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] run scoreboard players add @s CriticalDamage 12
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] run scoreboard players add @s CriticalDamage 8
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] run scoreboard players operation $CritPurple CmdData += $CurrentDamage CmdData
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1

execute if entity @s[tag=ChainImpact,predicate=cannons:ships/purple] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/purple] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/purple] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/purple] if score @s CalcSail1 matches 1.. at @s run particle block{block_state:"purple_wool"} ~ ~ ~ 1 1 1 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/purple] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 0.9
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/purple] if score @s CalcSail1 matches 1.. at @s run particle block{block_state:"purple_wool"} ~ ~ ~ 1 1 1 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=ChainImpact] at @s unless score @s CalcSail1 matches 1.. run playsound cannonball master @a ~ ~ ~ 4 1
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/purple] if score @s CalcSail1 matches 1.. at @s run particle block{block_state:"purple_wool"} ~ ~ ~ 1 1 1 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=ChainImpact] at @s unless score @s CalcSail1 matches 1.. run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1

#Blast Barrel extra critical damage
execute if entity @s[tag=BlastBarrel,scores={CalcAir2=1..},predicate=cannons:ships/purple] run scoreboard players operation @s CriticalDamage = @s CalcAir2
execute if entity @s[tag=BlastBarrel,scores={CalcAir2=1..},predicate=cannons:ships/purple] run scoreboard players operation @s CriticalDamage *= 2 const

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $CurrentDamage CmdData += @s CriticalDamage
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/purple] run scoreboard players operation $CritPurple CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/purple] run scoreboard players add $CritPurple CmdData 2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},tag=!BlastBarrel,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run function game:mvpstats/ingame_check
execute if score $gamestate CmdData matches 2 if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"translate":"ship.sunk_by","color":"aqua","with":[{"translate":"ship.purple","color":"dark_purple"},{"selector":"@s","color":"aqua"}]}]
execute if score $gamestate CmdData matches 2 if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if score $gamestate CmdData matches 2 if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players reset $hitmarkuuid playerUUID
scoreboard players reset $CurrentDamage CmdData

#> PURPLE
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange,tag=!cluster] run scoreboard players add $CurrentDamage CmdData 14
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID

#mvp tracker - purple
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

#Chain effect
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] run scoreboard players add @s CriticalDamage 12
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] run scoreboard players add @s CriticalDamage 8
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] run scoreboard players operation $CritOrange CmdData += $CurrentDamage CmdData
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/orange] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/orange] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/orange] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/orange] if score @s CalcSail1 matches 1.. at @s run particle block{block_state:"orange_wool"} ~ ~ ~ 1 1 1 0.1 100 force @a[predicate=cannons:seeparticles]
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/orange] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 0.9
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/orange] if score @s CalcSail1 matches 1.. at @s run particle block{block_state:"orange_wool"} ~ ~ ~ 1 1 1 0.1 100 force @a[predicate=cannons:seeparticles]

#Blast Barrel extra critical damage
execute if entity @s[tag=BlastBarrel,scores={CalcAir2=1..},predicate=cannons:ships/orange] run scoreboard players operation @s CriticalDamage = @s CalcAir2
execute if entity @s[tag=BlastBarrel,scores={CalcAir2=1..},predicate=cannons:ships/orange] run scoreboard players operation @s CriticalDamage *= 2 const

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $CurrentDamage CmdData += @s CriticalDamage
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/orange] run scoreboard players operation $CritOrange CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/orange] run scoreboard players add $CritOrange CmdData 2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},tag=!BlastBarrel,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run function game:mvpstats/ingame_check
execute if score $gamestate CmdData matches 2 if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"translate":"ship.sunk_by","color":"aqua","with":[{"translate":"ship.orange","color":"gold"},{"selector":"@s","color":"aqua"}]}]
execute if score $gamestate CmdData matches 2 if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if score $gamestate CmdData matches 2 if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if score $gamestate CmdData matches 2 if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players reset $hitmarkuuid playerUUID
scoreboard players reset $CurrentDamage CmdData

scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2
scoreboard players reset @s CalcSail1
scoreboard players reset @s CalcSail2