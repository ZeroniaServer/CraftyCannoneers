execute as @e[type=armor_stand,tag=cannonball,predicate=!cannons:safezones/tutorial] run function cannons:killcb
kill @e[type=armor_stand,tag=GasBubble,predicate=!cannons:ships/tutorialfull]
kill @e[type=item_display,tag=GasBubble,predicate=!cannons:ships/tutorialfull]
kill @e[type=item_display,tag=gascloud,predicate=!cannons:ships/tutorialfull]
kill @e[type=marker,tag=GasCloud,predicate=!cannons:ships/tutorialfull]
kill @e[type=bat,predicate=!cannons:ships/tutorialfull]
kill @e[type=marker,tag=RingOfFire,predicate=!cannons:ships/tutorialfull]
kill @e[type=marker,tag=ImpactMarker,predicate=!cannons:ships/tutorialfull]