forceload add -260 -379 -130 -15

#> Lobby signs
setblock -49 -28 -3 air
setblock -49 -28 -3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","translate":"game.click_here"}',Text3:'{"translate":"game.your_team","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave"}]}',Text4:'{"text":""}'}
setblock -49 -28 3 air
setblock -49 -28 3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","translate":"game.click_here"}',Text3:'{"translate":"game.your_team","color":"#00CCCC","with":[{"color":"#55FFFF","translate":"game.leave"}]}',Text4:'{"text":""}'}
setblock -74 -24 1 air
setblock -74 -24 1 oak_wall_sign
setblock -260 -24 -59 air
setblock -260 -24 -59 jungle_wall_sign[facing=south,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"text":""}',Text2:'{"translate":"tutorial.combat_area.weapons_sign.1"}',Text3:'{"translate":"tutorial.combat_area.weapons_sign.2"}',Text4:'{"text":""}'}
setblock -58 -24 0 air
setblock -58 -24 0 spruce_wall_sign[facing=west,waterlogged=false]{Color:"black",GlowingText:1b,Text1:'{"text":""}',Text2:'{"translate":"lobby.jail_sign.1"}',Text3:'{"translate":"lobby.jail_sign.2"}',Text4:'{"text":""}'}

bossbar set updatebar name ["",{"text":"UPDATING TO 1.1.0 ","color":"green"},{"text":"[","color":"gray"},{"text":"3","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]
bossbar set updatebar value 3

schedule function version:1_1_0/part4 10t