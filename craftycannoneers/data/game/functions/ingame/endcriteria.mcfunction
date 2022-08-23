#players leave
execute unless entity @a[team=Purple] unless entity @a[team=Orange] if entity @e[type=armor_stand,tag=ConfirmIcon] run tellraw @a {"text":"No players remaining. The previous game has been canceled.","color":"red"}
execute unless entity @a[team=Purple] unless entity @a[team=Orange] if entity @e[type=armor_stand,tag=ConfirmIcon] run function game:forcestop

#shiphp
execute if score $PurpleHP CmdData matches ..0 run scoreboard players set $WinningTeam CmdData 1
execute if score $OrangeHP CmdData matches ..0 run scoreboard players set $WinningTeam CmdData 2
execute if score $PurpleHP CmdData matches ..0 run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute if score $OrangeHP CmdData matches ..0 run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]

execute if score $WinningTeam CmdData matches 1.. run scoreboard players set $gamestate CmdData 3
#timer
execute if score $ticks CmdData matches ..19 if score $PurpleHP CmdData < $OrangeHP CmdData run scoreboard players set $WinningTeam CmdData 1
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData < $PurpleHP CmdData run scoreboard players set $WinningTeam CmdData 2
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData = $PurpleHP CmdData run scoreboard players set $WinningTeam CmdData 0
execute if score $ticks CmdData matches ..19 if score $PurpleHP CmdData < $OrangeHP CmdData run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData < $PurpleHP CmdData run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData = $PurpleHP CmdData run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute if score $ticks CmdData matches ..19 if score $PurpleHP CmdData < $OrangeHP CmdData run scoreboard players set $gamestate CmdData 3
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData < $PurpleHP CmdData run scoreboard players set $gamestate CmdData 3
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData = $PurpleHP CmdData run scoreboard players set $gamestate CmdData 3