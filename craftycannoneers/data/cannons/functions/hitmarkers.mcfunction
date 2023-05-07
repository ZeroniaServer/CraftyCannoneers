scoreboard players add @s[scores={HitmarkerType=0..}] HitmarkerTimer 1
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=1}] title {"text":" "}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0,HitmarkerTimer=2}] title {"text":"\uE004"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0,HitmarkerTimer=3}] title {"text":"\uE006"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0,HitmarkerTimer=4}] title {"text":"\uE008"}
execute at @s[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_normal master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=2}] title {"text":"\uE009"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=3}] title {"text":"\uE011"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=4}] title {"text":"\uE013"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=5}] title {"text":"\uE014"}
execute at @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_critical master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=2}] title {"text":"\uE016"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=4}] title {"text":"\uE017"}
execute at @s[scores={HitmarkerType=2,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_kill master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0..,HitmarkerTimer=1..2}] subtitle {"text":" "}

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=9}] title {"text":" "}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=9}] subtitle {"text":" "}
scoreboard players reset @s[scores={HitmarkerTimer=9..}] HitmarkerType
execute unless score @s HitmarkerType matches 0.. run scoreboard players reset @s[scores={HitmarkerTimer=1..}] HitmarkerTimer