forceload add -260 -379 -130 -15

#> Lobby signs
setblock -49 -28 -3 air
setblock -49 -28 -3 oak_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:0b,color:"black",messages:['{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"color":"#00CCCC","translate":"game.leave_sign.1","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}','{"color":"#00CCCC","translate":"game.leave_sign.2","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}','{"translate":"game.leave_sign.3","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}','{"translate":"game.leave_sign.4","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}']}}
setblock -49 -28 3 air
setblock -49 -28 3 oak_wall_sign[facing=east,waterlogged=false]{front_text:{has_glowing_text:0b,color:"black",messages:['{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"color":"#00CCCC","translate":"game.leave_sign.1","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}','{"color":"#00CCCC","translate":"game.leave_sign.2","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}','{"translate":"game.leave_sign.3","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}','{"translate":"game.leave_sign.4","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}']}}
setblock -74 -24 1 air
setblock -74 -24 1 oak_wall_sign
setblock -260 -24 -59 air
setblock -260 -24 -59 jungle_wall_sign[facing=south,waterlogged=false]{front_text:{has_glowing_text:1b,color:"black",messages:['{"translate":"tutorial.combat_area.weapons_sign.1"}','{"translate":"tutorial.combat_area.weapons_sign.2"}','{"translate":"tutorial.combat_area.weapons_sign.3"}','{"translate":"tutorial.combat_area.weapons_sign.4"}']}}
setblock -58 -24 0 air
setblock -58 -24 0 spruce_wall_sign[facing=west,waterlogged=false]{front_text:{has_glowing_text:1b,color:"black",messages:['{"translate":"lobby.jail_sign.1"}','{"translate":"lobby.jail_sign.2"}','{"translate":"lobby.jail_sign.3"}','{"translate":"lobby.jail_sign.4"}']}}

#> Replace Lobby Logo armor stand with Item Display
execute as @e[type=armor_stand,tag=LobbyLogo,limit=1] at @s run function version:1_1_0/logofix
fill -45 -22 3 -45 -22 2 light[level=14]

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"3","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 3

schedule function version:1_1_0/part4 10t

execute as @a at @s run playsound updateadvance master @s ~ ~ ~ 1 2