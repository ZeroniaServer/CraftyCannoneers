scoreboard players add @a[scores={HitmarkerType=0..}] HitmarkerTimer 1
execute as @a[scores={HitmarkerTimer=1}] run title @s title {"text":" "}
execute as @a[scores={HitmarkerType=0,HitmarkerTimer=2}] run title @s title {"text":"\uE000"}
execute as @a[scores={HitmarkerType=0,HitmarkerTimer=2}] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1

execute as @a[scores={HitmarkerType=1,HitmarkerTimer=2}] run title @s title {"text":"\uE001"}
execute as @a[scores={HitmarkerType=1,HitmarkerTimer=2}] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1
execute as @a[scores={HitmarkerType=1,HitmarkerTimer=2}] at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2

execute as @a[scores={HitmarkerType=2,HitmarkerTimer=2}] run title @s title {"text":"\uE002"}
execute as @a[scores={HitmarkerType=2,HitmarkerTimer=2}] at @s run playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1
execute as @a[scores={HitmarkerType=2,HitmarkerTimer=2}] at @s run playsound minecraft:entity.player.attack.knockback master @s ~ ~ ~ 1 2

execute as @a[scores={HitmarkerType=0..,HitmarkerTimer=1..2}] run title @s subtitle {"text":" "}

execute as @a[scores={HitmarkerTimer=9}] run title @s title {"text":" "}
execute as @a[scores={HitmarkerTimer=9}] run title @s subtitle {"text":" "}
scoreboard players reset @a[scores={HitmarkerTimer=9..}] HitmarkerType
execute as @a[scores={HitmarkerTimer=1..}] unless score @s HitmarkerType matches 0.. run scoreboard players reset @s HitmarkerTimer