item replace entity @e[type=armor_stand,tag=ModifierIcons] armor.head with air
fill -53 -24 9 -55 -22 9 air

item replace entity @e[type=glow_item_frame,tag=MapEntity,limit=1] container.0 with diamond_hoe{CustomModelData:76}

item replace entity @e[type=armor_stand,tag=TimeIcon,limit=1] armor.head with diamond_hoe{CustomModelData:35}
item replace entity @e[type=armor_stand,tag=HPIcon,limit=1] armor.head with diamond_hoe{CustomModelData:36}
item replace entity @e[type=armor_stand,tag=ConfirmIcon,limit=1] armor.head with diamond_hoe{CustomModelData:37}
item replace entity @e[type=armor_stand,tag=DefaultsIcon,limit=1] armor.head with diamond_hoe{CustomModelData:38}
item replace entity @e[type=armor_stand,tag=ModiIcon,limit=1] armor.head with diamond_hoe{CustomModelData:83}

fill -54 -24 9 -55 -23 9 air
setblock -53 -24 9 minecraft:crimson_wall_sign{GlowingText:1b,Color:"red",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 6497"}}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"translate":"customizer.restore_default","color":"#FF0003"}'}
setblock -55 -24 9 minecraft:crimson_wall_sign{GlowingText:1b,Color:"green",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 5732"}}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"translate":"customizer.confirm","color":"#00FF38"}'}
setblock -54 -24 9 minecraft:crimson_wall_sign{GlowingText:1b,Color:"light_blue",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 9152"}}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"translate":"customizer.modifiers","color":"#33ccff"}'}
setblock -53 -22 9 minecraft:crimson_wall_sign{GlowingText:1b,Color:"orange",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 7853"}}',Text2:'{"text":""}',Text3:'{"translate":"customizer.game_time","color":"#FFFB00"}'}
setblock -55 -22 9 minecraft:crimson_wall_sign{GlowingText:1b,Color:"pink",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 3384"}}',Text2:'{"text":""}',Text3:'{"translate":"customizer.ship_health","color":"#F8005B"}'}
scoreboard players set $ModiMapActive CmdData 0

function lobby:customizer/updatesigns

schedule function lobby:customizer/lightupdate 1t append