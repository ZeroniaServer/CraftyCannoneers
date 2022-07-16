scoreboard players add @a[scores={HitmarkerType=0..}] HitmarkerTimer 1
execute as @a[scores={HitmarkerTimer=1}] unless score $gamestate CmdData matches 3 run title @s title {"text":" "}
execute as @a[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run title @s title {"text":"\uE000"}
execute as @a[scores={HitmarkerType=0,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 at @s run playsound hitmarker_normal master @s ~ ~ ~ 1 1

execute as @a[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run title @s title {"text":"\uE001"}
execute as @a[scores={HitmarkerType=1,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 at @s run playsound hitmarker_critical master @s ~ ~ ~ 1 1

execute as @a[scores={HitmarkerType=2,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 run title @s title {"text":"\uE002"}
execute as @a[scores={HitmarkerType=2,HitmarkerTimer=2}] unless score $gamestate CmdData matches 3 at @s run playsound hitmarker_kill master @s ~ ~ ~ 1 1

execute as @a[scores={HitmarkerType=0..,HitmarkerTimer=1..2}] unless score $gamestate CmdData matches 3 run title @s subtitle {"text":" "}

execute as @a[scores={HitmarkerTimer=9}] unless score $gamestate CmdData matches 3 run title @s title {"text":" "}
execute as @a[scores={HitmarkerTimer=9}] unless score $gamestate CmdData matches 3 run title @s subtitle {"text":" "}
scoreboard players reset @a[scores={HitmarkerTimer=9..}] HitmarkerType
execute as @a[scores={HitmarkerTimer=1..}] unless score @s HitmarkerType matches 0.. run scoreboard players reset @s HitmarkerTimer