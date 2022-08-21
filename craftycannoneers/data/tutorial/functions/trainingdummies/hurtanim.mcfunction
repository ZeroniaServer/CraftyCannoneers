scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=1}] run playsound trainingdummy_hit1 master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=1}] run playsound trainingdummy_hit2 master @a ~ ~ ~ 1 0.7
data merge entity @s[scores={CmdData=1}] {Pose:{Head:[0f,4f,0f]}}
data merge entity @s[scores={CmdData=2}] {Pose:{Head:[0f,0f,0f]}}
data merge entity @s[scores={CmdData=3}] {Pose:{Head:[0f,-4f,0f]}}
data merge entity @s[scores={CmdData=4}] {Pose:{Head:[0f,0f,0f]}}
tag @s[scores={CmdData=4..}] remove DummyHurtAnim
scoreboard players reset @s[scores={CmdData=4..}] CmdData