#> Take the items
execute as @e[type=armor_stand,tag=DecoCB,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=DecoFB,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=DecoGCB,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=DecoCCB,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=DecoBCB,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=DecoTCB,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=DecoPCB,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=CannonballDeco,tag=HasDisplay] unless entity @a[team=Lobby,tag=!inParkour] run tag @s remove HasDisplay

#> Give back the items
execute as @e[type=armor_stand,tag=DecoCB,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with diamond_hoe{CustomModelData:16}
execute as @e[type=armor_stand,tag=DecoFB,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with diamond_hoe{CustomModelData:22}
execute as @e[type=armor_stand,tag=DecoGCB,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with diamond_hoe{CustomModelData:31}
execute as @e[type=armor_stand,tag=DecoCCB,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with diamond_hoe{CustomModelData:32}
execute as @e[type=armor_stand,tag=DecoBCB,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with diamond_hoe{CustomModelData:55}
execute as @e[type=armor_stand,tag=DecoTCB,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with diamond_hoe{CustomModelData:60}
execute as @e[type=armor_stand,tag=DecoPCB,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run item replace entity @s armor.head with diamond_hoe{CustomModelData:56}
execute as @e[type=armor_stand,tag=CannonballDeco,tag=!HasDisplay] if entity @a[team=Lobby,tag=!inParkour] run tag @s add HasDisplay

