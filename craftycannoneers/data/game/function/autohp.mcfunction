scoreboard players set $ShipHP CmdData 870
execute if score $InPurple CmdData > $InOrange CmdData as @a[team=Purple] run scoreboard players add $ShipHP CmdData 130
execute if score $InOrange CmdData > $InPurple CmdData as @a[team=Orange] run scoreboard players add $ShipHP CmdData 130
execute if score $InOrange CmdData = $InPurple CmdData as @a[team=Purple] run scoreboard players add $ShipHP CmdData 130

scoreboard players operation $PurpleHP CmdData = $ShipHP CmdData
scoreboard players operation $OrangeHP CmdData = $ShipHP CmdData

scoreboard players set $WasAuto CmdData 1