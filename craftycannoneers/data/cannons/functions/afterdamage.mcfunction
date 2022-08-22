function cannons:airfill

scoreboard players operation @s CalcAir2 -= @s CalcAir1

execute if entity @s[scores={CalcAir2=0..}] run tellraw @a [{"text":"dealt damage"}]
execute if entity @s[predicate=cannons:ships/purple] run tellraw @a [{"text":" - to purple ship"}]
execute if entity @s[predicate=cannons:ships/orange] run tellraw @a [{"text":" - to orange ship"}]

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple,tag=!cluster] run scoreboard players add $CurrentDamage CmdData 14

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $DamagePurple CmdData += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Purple's Ship","color":"dark_purple"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
#mvp tracker - orange
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData
scoreboard players reset $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/purple] as @a[team=Orange] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] if score $DamagePurple CmdData >= $PurpleHP CmdData run scoreboard players reset $tempuuid playerUUID
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/purple] run scoreboard players reset $hitmarkuuid

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange,tag=!cluster] run scoreboard players add $CurrentDamage CmdData 14

execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $DamageOrange CmdData += $CurrentDamage CmdData
tellraw @a [{"text":"SHIP: currdamage "},{"score":{"name":"$CurrentDamage","objective":"CmdData"}}]
tellraw @a [{"text":"SHIP: damageorange "},{"score":{"name":"$DamageOrange","objective":"CmdData"}}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Orange's Ship","color":"gold"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players operation $hitmarkuuid playerUUID = @s playerUUID
#mvp tracker - purple
tellraw @a [{"text":"PLAYER: currdamage "},{"score":{"name":"$CurrentDamage","objective":"CmdData"}}]
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run tellraw @a [{"text":"PLAYER: MVPdamage "},{"score":{"name":"@s","objective":"MVPdamage"}}]
scoreboard players reset $CurrentDamage CmdData
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players reset @s HitmarkerTimer
execute if entity @s[scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerType matches 1.. unless score @s HitmarkerTimer matches 0.. run scoreboard players set @s HitmarkerType 0
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=!Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. run loot give @s loot cannons:coins
execute if entity @s[tag=GoldImpact,scores={CalcAir2=0..},tag=Hit1,predicate=cannons:ships/orange] as @a[team=Purple] if score @s playerUUID = $hitmarkuuid playerUUID unless score @s HitmarkerTimer matches 0.. at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] if score $DamageOrange CmdData >= $OrangeHP CmdData run scoreboard players reset $tempuuid playerUUID
execute if entity @s[scores={CalcAir2=0..},predicate=cannons:ships/orange] run scoreboard players reset $hitmarkuuid

tellraw @a [""]

scoreboard players reset @s CalcAir1
scoreboard players reset @s CalcAir2

kill @s