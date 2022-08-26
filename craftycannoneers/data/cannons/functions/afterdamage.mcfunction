function cannons:airfill

scoreboard players operation @s CalcAir2 -= @s CalcAir1
scoreboard players operation @s CalcSail1 -= @s CalcSail2

#> ORANGE
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
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
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] run scoreboard players add $CritPurple CmdData 20
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1

execute if entity @s[tag=ChainImpact,predicate=cannons:ships/purple] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/purple] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/purple] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 1
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/purple] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 0.9
execute if entity @s[tag=ChainImpact] at @s unless score @s CalcSail1 matches 1.. run playsound cannonball master @a ~ ~ ~ 4 1
execute if entity @s[tag=ChainImpact] at @s unless score @s CalcSail1 matches 1.. run playsound cannonball_distant master @a[distance=14..] ~ ~ ~ 6 1

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $CurrentDamage CmdData += @s CriticalDamage
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/purple] run scoreboard players operation $CritPurple CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/purple] run scoreboard players add $CritPurple CmdData 2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Purple's Ship","color":"dark_purple"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players reset $hitmarkuuid playerUUID
scoreboard players reset $CurrentDamage CmdData

#> PURPLE
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
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
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] run scoreboard players add $CritOrange CmdData 20
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=..10},predicate=cannons:ships/abovesails,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/orange] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage2 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/orange] unless score @s CalcSail1 matches 1.. at @s run playsound shipdamage1 master @a ~ ~ ~ 2 1
execute if entity @s[tag=ChainImpact,predicate=cannons:ships/orange] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 1
execute if entity @s[tag=ChainImpact,scores={doublehit=4..},predicate=cannons:ships/orange] if score @s CalcSail1 matches 1.. at @s run playsound ripsail master @a ~ ~ ~ 3 0.9

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $CurrentDamage CmdData += @s CriticalDamage
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/orange] run scoreboard players operation $CritOrange CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..,CriticalDamage=1..},predicate=cannons:ships/orange] run scoreboard players add $CritOrange CmdData 2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Orange's Ship","color":"gold"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players reset $hitmarkuuid playerUUID
scoreboard players reset $CurrentDamage CmdData

#> TUTORIAL
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/tutorial] at @s run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/tutorial] at @s as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players reset @s HitmarkerTimer
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/tutorial] at @s as @a[team=Lobby] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 2 run scoreboard players set @s HitmarkerType 1
execute if entity @s[tag=ChainImpact,scores={CalcSail1=1..},predicate=cannons:ships/abovesails,predicate=cannons:ships/tutorial] at @s run scoreboard players reset $hitmarkuuid playerUUID

scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2
scoreboard players reset @s CalcSail1
scoreboard players reset @s CalcSail2

kill @s