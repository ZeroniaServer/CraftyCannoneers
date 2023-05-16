title @a actionbar ["",{"text":"Orange","color":"gold","bold":true},{"text":" team has been marked as ","color":"aqua"},{"text":"Not Ready.","color":"red","bold":true,"underlined":true}]
data modify block -44 -28 0 front_text.messages[2] set value '{"extra":[{"color":"gold","text":"Orange: "},{"color":"red","text":"❌","bold":true}],"text":""}'
scoreboard players set $OrangeReady CmdData 0