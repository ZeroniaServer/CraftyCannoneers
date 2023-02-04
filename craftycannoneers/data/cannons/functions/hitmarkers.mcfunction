scoreboard players add @s[scores={HitmarkerType=0..}] HitmarkerTimer 1
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=1}] title {"text":" "}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0,HitmarkerTimer=2}] title {"text":"\uE000"}
execute at @s[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_normal master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=2}] title {"text":"\uE001"}
execute at @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_critical master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=2}] title {"text":"\uE002"}
execute at @s[scores={HitmarkerType=2,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_kill master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0..,HitmarkerTimer=1..2}] subtitle {"text":" "}

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=9}] title {"text":" "}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=9}] subtitle {"text":" "}
scoreboard players reset @s[scores={HitmarkerTimer=9..}] HitmarkerType
execute unless score @s HitmarkerType matches 0.. run scoreboard players reset @s[scores={HitmarkerTimer=1..}] HitmarkerTimer