scoreboard players add $StormTime CmdData 1

execute if score $StormTime CmdData matches 1.. run weather thunder
execute if score $StormTime CmdData matches 75 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}
execute if score $StormTime CmdData matches 75 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}

execute if score $StormTime CmdData matches 90 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}
execute if score $StormTime CmdData matches 90 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}

execute if score $StormTime CmdData matches 690.. run summon marker 70 -27 0 {Tags:["StormEventPicker","StormEntity"]}
execute as @e[type=marker,tag=StormEventPicker,limit=1] run function game:modifiers/seastorms/pickevent

#> Lightning
execute as @e[type=lightning_bolt] at @s run function game:modifiers/seastorms/reallightning
execute as @e[type=marker,tag=LightningMarker] at @s run function game:modifiers/seastorms/marker

#> Wind
execute if score $WindDirection CmdData matches 0..1 run scoreboard players add $WindEffect CmdData 1
# East
execute if score $WindDirection CmdData matches 0 if score $WindEffect CmdData matches 1 run playsound seastorm master @a 36 -12 0 7 1
execute if score $WindDirection CmdData matches 0 if score $WindEffect CmdData matches 1 run playsound seastorm master @a 104 -12 0 5 1.6

# West
execute if score $WindDirection CmdData matches 1 if score $WindEffect CmdData matches 1 run playsound seastorm master @a 104 -12 0 7 1
execute if score $WindDirection CmdData matches 1 if score $WindEffect CmdData matches 1 run playsound seastorm master @a 36 -12 0 5 1.6
#Global
execute if score $WindEffect CmdData matches 275.. run scoreboard players reset $WindDirection CmdData
execute if score $WindEffect CmdData matches 275.. run scoreboard players reset $WindEffect CmdData
execute if score $WindEffect CmdData matches 1..2 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 21..22 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 41..42 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 61..62 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 81..82 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 101..102 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 121..122 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 141..142 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 161..162 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 181..182 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 201..202 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 221..222 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 241..242 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 261..262 run function game:modifiers/seastorms/spawnwindtrail
execute if score $WindEffect CmdData matches 20..200 as @e[type=armor_stand,tag=cannonball,tag=!StrikeLightning,tag=!Submerged,scores={CmdData=4..},predicate=!cannons:safezones/tutorial] run function game:modifiers/seastorms/cannonballinacc
execute if score $WindEffect CmdData matches 20..200 as @e[type=armor_stand,tag=Bomb,predicate=!cannons:safezones/tutorial] run function game:modifiers/seastorms/cannonballinacc
execute if score $WindEffect CmdData matches 20..200 as @e[type=arrow,predicate=!cannons:safezones/tutorial] run function game:modifiers/seastorms/cannonballinacc
execute if score $WindEffect CmdData matches 20..200 as @e[type=trident,predicate=!cannons:safezones/tutorial] run function game:modifiers/seastorms/cannonballinacc

execute as @e[type=marker,tag=WindIndicator] run function game:modifiers/seastorms/windeffects