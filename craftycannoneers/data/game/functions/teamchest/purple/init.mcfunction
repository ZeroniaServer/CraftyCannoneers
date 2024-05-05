advancement revoke @s only game:openpurplechest

##The tick advancement below helps us run a function in the advancement part of the subtick, where we detect if the container is closed or not.
advancement revoke @s only game:purplechestsubtick

##Tagging player for reference
tag @s add purpleteamchestopen

##The score below will be used to detect if the schedule function will target the container for the first time. 

##Due to subtick timings, if we set initial items in this function, they will be overwritten in the first run of the schedule function.
scoreboard players set @e[type=chest_minecart,tag=purpleteamchest,limit=1] eyeclick 1

schedule function game:teamchest/purple/schedule 1t replace

function game:teamchest/purple/open