execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.enemy",italic:true,color:"green"},"\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{translate:"weakpoint.destroyed.something",color:"dark_aqua"},{translate:"weakpoint.destroyed.exposed",underlined:true,color:"dark_green"},"\n"]}]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=!Spotted] run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.enemy",italic:true,color:"green"},"\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{translate:"weakpoint.destroyed.something",color:"dark_aqua"},{translate:"weakpoint.destroyed.unexposed",underlined:true,color:"red"},{translate:"weakpoint.destroyed.no_bonus",color:"dark_aqua"}]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.something_own",color:"red",with:[""]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=!Spotted] run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.something_own",color:"dark_aqua",with:[{translate:"weakpoint.destroyed.no_bonus",color:"green"}]},"\n"]
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $DamageOrange CmdData 85
execute unless score $PurpleWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $CritOrange CmdData 87
scoreboard players set $PurpleWPDelay CmdData 1

execute as @e[type=slime,tag=Weakpoint,tag=Purple,limit=1] run function arenaclear:kill
kill @e[type=marker,tag=XParticle,tag=Purple]

scoreboard players add $PurpleWP CmdData 1

execute as @e[type=marker,tag=WeakpointLoc,tag=Orange] at @s run function game:shipweakpoint/removeloc
tag @e[type=marker,tag=WeakpointLoc,tag=Orange,sort=random,limit=1] add SelectedWeakP
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Orange] unless score $PurpleWP CmdData matches 6.. run function game:shipweakpoint/placeneworange
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Orange] run scoreboard players set $PurpleWP CmdData 6

execute as @e[type=marker,tag=SelectedWeakP,tag=Orange,limit=1] at @s run function game:shipweakpoint/summonorange

team join NoName @e[type=slime,tag=Weakpoint,tag=Purple,limit=1]

scoreboard players set @a[team=Purple,scores={WPNotify=-1000..}] WPNotify -20
execute if score $PurpleWP CmdData matches 6.. run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.all_enemy",color:"aqua"},"\n"]
execute if score $PurpleWP CmdData matches 6.. run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.all_own",color:"red"},"\n"]

kill @e[type=marker,tag=SelectedWeakP,limit=1]

#> Lost Cargo
execute if score $LostCargo CmdData matches 1 if score $PurpleWP CmdData matches 1.. if predicate game:twentypercent run function game:modifiers/lostcargo/spawnorange