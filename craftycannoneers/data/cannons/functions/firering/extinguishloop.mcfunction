execute at @s store result score @s CalcAir2 run fill ~200 ~ ~ ~ ~ ~100 air replace fire
execute at @s run fill ~200 ~ ~ ~ ~ ~100 air replace fire
execute if entity @s[tag=Purple,scores={CalcAir2=1..}] run scoreboard players operation $DamagePurple CmdData += @s CalcAir2
execute if entity @s[tag=Orange,scores={CalcAir2=1..}] run scoreboard players operation $DamageOrange CmdData += @s CalcAir2
execute if entity @s[tag=Purple,scores={CalcAir2=1..}] run scoreboard players operation $CurrentDamage CmdData += @s CalcAir2
execute if entity @s[tag=Orange,scores={CalcAir2=1..}] run scoreboard players operation $CurrentDamage CmdData = @s CalcAir2
scoreboard players reset @s CalcAir2
execute at @s run tp @s ~ ~1 ~
scoreboard players add @s CmdData 1

execute if entity @s[tag=Purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Purple's Ship","color":"dark_purple"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[tag=Purple] if score $DamagePurple CmdData >= $PurpleHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if entity @s[tag=Purple] run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=Purple] as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData
execute if entity @s[tag=Purple] if score $DamagePurple CmdData >= $PurpleHP CmdData as @a[team=Orange] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[tag=Purple] if score $DamagePurple CmdData >= $PurpleHP CmdData run scoreboard players reset $tempuuid playerUUID

execute if entity @s[tag=Orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run tellraw @a ["",{"text":"Team Orange's Ship","color":"gold"},{"text":" sunk by ","color":"aqua"},{"selector":"@s","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @s[tag=Orange] if score $DamageOrange CmdData >= $OrangeHP CmdData unless score $AnnouncedLast CmdData matches 1 run scoreboard players set $AnnouncedLast CmdData 1
execute if entity @s[tag=Orange] run scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute if entity @s[tag=Orange] as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run scoreboard players operation @s MVPdamage += $CurrentDamage CmdData
execute if entity @s[tag=Orange] if score $DamageOrange CmdData >= $OrangeHP CmdData as @a[team=Purple] if score @s playerUUID = $tempuuid playerUUID run advancement grant @s only tutorial:zzzunlockables/battleship
execute if entity @s[tag=Orange] if score $DamageOrange CmdData >= $OrangeHP CmdData run scoreboard players reset $tempuuid playerUUID

scoreboard players reset $CurrentDamage CmdData

execute unless entity @s[scores={CmdData=50..}] at @s run function cannons:firering/extinguishloop
kill @s[scores={CmdData=50..}]