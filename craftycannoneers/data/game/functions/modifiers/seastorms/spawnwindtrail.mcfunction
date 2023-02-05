execute if score $WindDirection CmdData matches 0 run summon marker 16 -18 30 {Tags:["StormEntity","WindIndicator","East","New"]}
execute if score $WindDirection CmdData matches 1 run summon marker 124 -18 30 {Tags:["StormEntity","WindIndicator","West","New"]}

execute as @e[type=marker,tag=WindIndicator,tag=New,limit=1] run function game:modifiers/seastorms/randomizewind