function game:forcestop
tag @a add LeaveGame
scoreboard players reset * CannonID
scoreboard players reset * playerUUID
scoreboard players add $current CannonID 0
function arenaclear:fullreset
function lobby:customizer/defaults
function lobby:parkour/resethighscore
function entityid:flush
function tutorial:initialize
function tutorial:tips/newset
function debug:setup
scoreboard players reset $servermode CmdData
scoreboard players set $forcedmodes CmdData 1