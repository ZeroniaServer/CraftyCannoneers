#players leave
execute unless entity @a[team=Purple] unless entity @a[team=Orange] if entity @e[type=item_display,tag=ConfirmIcon] run tellraw @a ["\n",{translate:"game.no_players",color:"red"}]
execute unless entity @a[team=Purple] unless entity @a[team=Orange] if entity @e[type=item_display,tag=ConfirmIcon] run function game:forcestop
execute if entity @s[type=player] unless entity @a[team=Purple] unless entity @a[team=Orange] run return run scoreboard players set #noplayers CmdData 1

#shiphp
execute if score $PurpleHP CmdData matches ..0 run scoreboard players set $WinningTeam CmdData 1
execute if score $OrangeHP CmdData matches ..0 run scoreboard players set $WinningTeam CmdData 2
execute if score $WinningTeam CmdData matches 1.. run scoreboard players set $gamestate CmdData 3

#in case both tie
execute if score $PurpleHP CmdData matches ..0 if score $OrangeHP CmdData matches ..0 run scoreboard players set $WinningTeam CmdData 0
execute if score $PurpleHP CmdData matches ..0 if score $OrangeHP CmdData matches ..0 run scoreboard players set $gamestate CmdData 3

#timer
execute if score $ticks CmdData matches ..19 if score $PurpleHP CmdData < $OrangeHP CmdData run scoreboard players set $WinningTeam CmdData 1
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData < $PurpleHP CmdData run scoreboard players set $WinningTeam CmdData 2
execute if score $ticks CmdData matches ..19 if score $OrangeHP CmdData = $PurpleHP CmdData run scoreboard players set $WinningTeam CmdData 0
execute if score $ticks CmdData matches ..19 run scoreboard players set $gamestate CmdData 3