execute if score $DamagePurple CmdData matches 1.. if score $PurpleHP CmdData matches 1.. run scoreboard players remove $PurpleHP CmdData 1
execute if score $DamagePurple CmdData matches 1.. if score $PurpleHP CmdData matches 1.. run scoreboard players add $CombinedDamage CmdData 1
execute if score $DamagePurple CmdData matches 1.. if score $PurpleHP CmdData matches 1.. if score $CritPurple CmdData matches 1.. run scoreboard players remove $CritPurple CmdData 1
execute if score $DamagePurple CmdData matches 1.. run scoreboard players remove $DamagePurple CmdData 1
execute if score $DamagePurple CmdData matches ..0 if score $CritPurple CmdData matches 1.. run tellraw @a [{"text":"CritPurple: "},{"score":{"name":"$CritPurple","objective":"CmdData"}}]
execute if score $DamagePurple CmdData matches ..0 run scoreboard players set $CritPurple CmdData 0

execute if score $DamageOrange CmdData matches 1.. if score $OrangeHP CmdData matches 1.. run scoreboard players remove $OrangeHP CmdData 1
execute if score $DamageOrange CmdData matches 1.. if score $OrangeHP CmdData matches 1.. run scoreboard players add $CombinedDamage CmdData 1
execute if score $DamageOrange CmdData matches 1.. if score $OrangeHP CmdData matches 1.. if score $CritOrange CmdData matches 1.. run scoreboard players remove $CritOrange CmdData 1
execute if score $DamageOrange CmdData matches 1.. run scoreboard players remove $DamageOrange CmdData 1
execute if score $DamageOrange CmdData matches ..0 if score $CritOrange CmdData matches 1.. run tellraw @a [{"text":"CritOrange: "},{"score":{"name":"$CritOrange","objective":"CmdData"}}]
execute if score $DamageOrange CmdData matches ..0 run scoreboard players set $CritOrange CmdData 0

function game:updatebossbars