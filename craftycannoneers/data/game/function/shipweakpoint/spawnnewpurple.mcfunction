execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.enemy",italic:true,color:"green"},"\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{translate:"weakpoint.destroyed.something",color:"dark_aqua"},{translate:"weakpoint.destroyed.exposed",underlined:true,color:"dark_green"},"\n"]}]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=!Spotted] run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.enemy",italic:true,color:"green"},"\n",{translate:"weakpoint.destroyed",color:"dark_aqua",with:[{translate:"weakpoint.destroyed.something",color:"dark_aqua"},{translate:"weakpoint.destroyed.unexposed",underlined:true,color:"red"},{translate:"weakpoint.destroyed.no_bonus",color:"dark_aqua"}]},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.something_own",color:"red",with:[""]},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=!Spotted] run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.something_own",color:"dark_aqua",with:[{translate:"weakpoint.destroyed.no_bonus",color:"green"}]},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $DamagePurple CmdData 85
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $CritPurple CmdData 87
scoreboard players set $OrangeWPDelay CmdData 1

execute as @e[type=slime,tag=Weakpoint,tag=Orange,limit=1] run function arenaclear:kill
kill @e[type=marker,tag=XParticle,tag=Orange]

scoreboard players add $OrangeWP CmdData 1

execute as @e[type=marker,tag=WeakpointLoc,tag=Purple] at @s run function game:shipweakpoint/removeloc
tag @e[type=marker,tag=WeakpointLoc,tag=Purple,sort=random,limit=1] add SelectedWeakP
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Purple,limit=1] unless score $OrangeWP CmdData matches 6.. run function game:shipweakpoint/placenewpurple
execute unless entity @e[type=marker,tag=SelectedWeakP,tag=Purple,limit=1] run scoreboard players set $OrangeWP CmdData 6

execute as @e[type=marker,tag=SelectedWeakP,tag=Purple,limit=1] at @s run function game:shipweakpoint/summonpurple

team join NoName @e[type=slime,tag=Weakpoint,tag=Orange,limit=1]

scoreboard players set @a[team=Orange,scores={WPNotify=-1000..}] WPNotify -20
execute if score $OrangeWP CmdData matches 6.. run tellraw @a[team=Orange] ["\n",{translate:"weakpoint.destroyed.all_enemy",color:"aqua"},"\n"]
execute if score $OrangeWP CmdData matches 6.. run tellraw @a[team=Purple] ["\n",{translate:"weakpoint.destroyed.all_own",color:"red"},"\n"]

kill @e[type=marker,tag=SelectedWeakP,limit=1]

#> Lost Cargo
execute if score $LostCargo CmdData matches 1 if score $OrangeWP CmdData matches 1.. if predicate game:twentypercent run function game:modifiers/lostcargo/spawnpurple