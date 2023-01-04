execute unless entity @e[type=creeper,tag=mobtest,limit=1] run summon creeper 0 -64 0 {Silent:1b,NoAI:1b,Tags:["mobtest"]}
scoreboard players set $mobtest CmdData 1
schedule function lobby:customizer/mobtest2 2t replace