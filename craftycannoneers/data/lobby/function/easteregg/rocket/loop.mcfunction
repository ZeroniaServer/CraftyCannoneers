scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=10}] run particle splash -58 -18 -21 0.5 0.2 0.5 0.1 100 force @a[predicate=!game:tutorialbounds]
execute at @s[scores={CmdData=..30}] run particle falling_water ~ ~ ~ 0.5 0.2 0.5 0.1 4 force @a[predicate=!game:tutorialbounds]
execute at @s[scores={CmdData=30..60}] run particle falling_water ~ ~ ~ 0.5 0.2 0.5 0.1 2 force @a[predicate=!game:tutorialbounds]
execute at @s[scores={CmdData=60..65}] run particle falling_water ~ ~ ~ 0.5 0.2 0.5 0.1 1 force @a[predicate=!game:tutorialbounds]
execute at @s[scores={CmdData=10}] run particle bubble_column_up -58 -19.3 -21 0.5 0 0.5 0.1 100 force @a[predicate=!game:tutorialbounds]
execute at @s[scores={CmdData=10}] run playsound entity.player.swim master @a ~ ~ ~ 3 0
execute at @s[scores={CmdData=10}] run playsound entity.player.swim master @a ~ ~ ~ 3 1
execute at @s[scores={CmdData=10}] run playsound entity.player.swim master @a ~ ~ ~ 3 2
execute at @s[scores={CmdData=15}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=20}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.9
execute at @s[scores={CmdData=25}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.9
execute at @s[scores={CmdData=30}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.7
execute at @s[scores={CmdData=35}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=40}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.9
execute at @s[scores={CmdData=45}] run playsound entity.tnt.primed master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=45}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=50}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.85
execute at @s[scores={CmdData=55}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.9
execute at @s[scores={CmdData=60}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=65}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=70}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.85
execute at @s[scores={CmdData=75}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.9
execute at @s[scores={CmdData=80}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.75
execute at @s[scores={CmdData=85}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.8
execute at @s[scores={CmdData=90}] run playsound block.piston.contract master @a ~ ~ ~ 1 0.9
execute at @s[scores={CmdData=95}] run playsound block.piston.extend master @a ~ ~ ~ 1 0.9
execute at @s[scores={CmdData=100}] run playsound entity.generic.explode master @a ~ ~ ~ 3 0.75
execute at @s[scores={CmdData=102}] run playsound entity.generic.explode master @a ~ ~ ~ 3 0.9
execute at @s[scores={CmdData=105}] run playsound entity.generic.explode master @a ~ ~ ~ 3 0.8
execute at @s[scores={CmdData=100}] run particle explosion ~ ~2 ~ 1.3 2 1.3 0.1 40 force @a[predicate=!game:tutorialbounds]
execute at @s[scores={CmdData=102}] run item replace entity @s container.0 with air
execute at @s[scores={CmdData=102}] run summon item ~ ~ ~ {Tags:["RRHeadItem"],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1879887536,-1673376384,-1653471241,-507601540]}}},PickupDelay:2000,Motion:[0.0d,0.1d,0.15d]}
execute at @s[scores={CmdData=102}] run summon item ~ ~ ~ {Tags:["RRHeadItem"],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1143768566,1044072941,-1808662431,483304317]}}},PickupDelay:2000,Motion:[0.1d,0.3d,0.1d]}
execute at @s[scores={CmdData=102}] run summon item ~ ~ ~ {Tags:["RRHeadItem"],Item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-2078491198,1749566810,-1784180285,-778044444]}}},PickupDelay:2000,Motion:[0.15d,0.2d,0.0d]}
execute at @s[scores={CmdData=102}] run summon area_effect_cloud -57 -18 -21 {Tags:["RRText"],Duration:80,WaitTime:0,CustomNameVisible:1b,CustomName:["",{translate:"easter_egg.launch.should_try",color:"white",with:[{translate:"easter_egg.launch.rocket",bold:true,color:"blue"},{translate:"easter_egg.launch.riders",bold:true,color:"gold"}]}],Radius:0f,custom_particle:{type:"block",block_state:"minecraft:air"}}
kill @s[scores={CmdData=185..}]
execute at @s[scores={CmdData=..105}] run tp @s ~ ~0.15 ~
execute at @s[scores={CmdData=..5}] run tp @s ~ ~0.6 ~
execute at @s[scores={CmdData=6..8}] run tp @s ~ ~0.4 ~
execute at @s[scores={CmdData=9..12}] run tp @s ~ ~0.2 ~