scoreboard players add @s[scores={HitmarkerType=0..}] HitmarkerTimer 1
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=1}] title {"text":" "}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0,HitmarkerTimer=2}] title {"text":"\uE004"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0,HitmarkerTimer=3}] title {"text":"\uE006"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0,HitmarkerTimer=4}] title {"text":"\uE008"}
execute unless score $gamestate CmdData matches 3 run scoreboard players set @s[scores={HitmarkerType=0,HitmarkerTimer=5..}] HitmarkerTimer 16
execute at @s[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_normal master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=2}] title {"text":"\uE009"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=3}] title {"text":"\uE011"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=4}] title {"text":"\uE013"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=1,HitmarkerTimer=5}] title {"text":"\uE014"}
execute unless score $gamestate CmdData matches 3 run scoreboard players set @s[scores={HitmarkerType=1,HitmarkerTimer=6..}] HitmarkerTimer 16
execute at @s[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_critical master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=2}] title {"text":"\uE018"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=3}] title {"text":"\uE019"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=4}] title {"text":"\uE01A"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=5}] title {"text":"\uE01B"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=6}] title {"text":"\uE01C"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=7}] title {"text":"\uE01D"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=8}] title {"text":"\uE01E"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=9}] title {"text":"\uE01F"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=10}] title {"text":"\uE020"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=11}] title {"text":"\uE021"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=12}] title {"text":"\uE022"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=13}] title {"text":"\uE023"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=14}] title {"text":"\uE024"}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=2,HitmarkerTimer=15}] title {"text":"\uE025"}
execute at @s[scores={HitmarkerType=2,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run playsound hitmarker_kill master @s ~ ~ ~ 1 1

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerType=0..,HitmarkerTimer=1..2}] subtitle {"text":" "}

execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=16}] title {"text":" "}
execute unless score $gamestate CmdData matches 3 run title @s[scores={HitmarkerTimer=16}] subtitle {"text":" "}
scoreboard players reset @s[scores={HitmarkerTimer=16..}] HitmarkerType
execute unless score @s HitmarkerType matches 0.. run scoreboard players reset @s[scores={HitmarkerTimer=1..}] HitmarkerTimer