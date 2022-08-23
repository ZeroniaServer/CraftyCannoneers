scoreboard players add @s[scores={HitmarkerType=0..}] HitmarkerTimer 1
execute if entity @s[scores={HitmarkerTimer=1}] unless score $gamestate CmdData matches 3 run title @s title {"text":" "}
execute if entity @s[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run title @s title {"text":"\uE000"}
execute if entity @s[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 at @s run playsound hitmarker_normal master @s ~ ~ ~ 1 1

execute if entity @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run title @s title {"text":"\uE001"}
execute if entity @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 at @s run playsound hitmarker_critical master @s ~ ~ ~ 1 1

execute if entity @s[scores={HitmarkerType=2,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run title @s title {"text":"\uE002"}
execute if entity @s[scores={HitmarkerType=2,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 at @s run playsound hitmarker_kill master @s ~ ~ ~ 1 1

execute if entity @s[scores={HitmarkerType=0..,HitmarkerTimer=1..2}] unless score $gamestate CmdData matches 3 run title @s subtitle {"text":" "}

execute if entity @s[scores={HitmarkerTimer=9}] unless score $gamestate CmdData matches 3 run title @s title {"text":" "}
execute if entity @s[scores={HitmarkerTimer=9}] unless score $gamestate CmdData matches 3 run title @s subtitle {"text":" "}
scoreboard players reset @s[scores={HitmarkerTimer=9..}] HitmarkerType
execute if entity @s[scores={HitmarkerTimer=1..}] unless score @s HitmarkerType matches 0.. run scoreboard players reset @s HitmarkerTimer