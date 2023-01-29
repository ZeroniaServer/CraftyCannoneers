function game:forcestop
tag @a add LeaveGame
scoreboard players reset * CannonID
scoreboard players add $current CannonID 0
function arenaclear:fullreset
function lobby:customizer/defaults
function lobby:parkour/resethighscore
function entityid:flush
function tutorial:initialize
function tutorial:tips/newset
function debug:setup
function debug:setcustomizerboard