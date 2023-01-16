#Time Limit
execute if entity @s[scores={modisigns=7853}] run function lobby:customizer/timelimit

#Ship HP
execute if entity @s[scores={modisigns=3384}] run function lobby:customizer/shiphp

#Confirm
execute if entity @s[scores={modisigns=5732}] run function lobby:customizer/confirm

#Restore Defaults
execute if entity @s[scores={modisigns=6497}] run function lobby:customizer/defaults

#Modifiers
execute if entity @s[scores={modisigns=9152}] run function lobby:customizer/modifiers_on
execute if entity @s[scores={modisigns=9152}] run scoreboard players reset @s moditimer

#Modifiers
execute if entity @s[scores={modisigns=9153}] run function lobby:customizer/modifiers_off
execute if entity @s[scores={modisigns=9153}] run scoreboard players reset @s moditimer

execute as @a[tag=ModiOwner] at @s run playsound ui.button.click master @s ~ ~ ~ 1 1