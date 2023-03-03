forceload add -260 -379 -130 -15

#> Lobby signs
setblock -49 -28 -3 air
setblock -49 -28 -3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"color":"#00CCCC","translate":"game.leave_sign.1","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text2:'{"color":"#00CCCC","translate":"game.leave_sign.2","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text3:'{"translate":"game.leave_sign.3","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text4:'{"translate":"game.leave_sign.4","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}'}
setblock -49 -28 3 air
setblock -49 -28 3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"color":"#00CCCC","translate":"game.leave_sign.1","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text2:'{"color":"#00CCCC","translate":"game.leave_sign.2","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text3:'{"translate":"game.leave_sign.3","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}',Text4:'{"translate":"game.leave_sign.4","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave_sign.leave"}]}'}
setblock -74 -24 1 air
setblock -74 -24 1 oak_wall_sign
setblock -260 -24 -59 air
setblock -260 -24 -59 jungle_wall_sign[facing=south,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"translate":"tutorial.combat_area.weapons_sign.1"}',Text2:'{"translate":"tutorial.combat_area.weapons_sign.2"}',Text3:'{"translate":"tutorial.combat_area.weapons_sign.3"}',Text4:'{"translate":"tutorial.combat_area.weapons_sign.4"}'}
setblock -58 -24 0 air
setblock -58 -24 0 spruce_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"translate":"lobby.jail_sign.1"}',Text2:'{"translate":"lobby.jail_sign.2"}',Text3:'{"translate":"lobby.jail_sign.3"}',Text4:'{"translate":"lobby.jail_sign.4"}'}

bossbar set updatebar name ["",{"translate":"game.updating_to","color":"green","with":[{"text":"1.1.0","color":"green"},[{"text":"[","color":"gray"},{"text":"3","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]]}]
bossbar set updatebar value 3

schedule function version:1_1_0/part4 10t