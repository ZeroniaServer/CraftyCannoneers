#> Splits entire list of Modifiers into individual lines based on line length

#General variables
execute store result score $modifiersLeft CmdData run data get storage craftycannoneers:modifiers list
execute if score $modifiersLeft CmdData matches 1.. run scoreboard players set $maxLineLength CmdData 34

#Adds the next modifier in the list to the most recently created line
execute if score $modifiersLeft CmdData matches 1.. run data modify storage craftycannoneers:modifiers line[-1] append from storage craftycannoneers:modifiers list[-1]
execute if score $modifiersLeft CmdData matches 1.. run data remove storage craftycannoneers:modifiers list[-1]
execute store result score $modifiersLeft CmdData run data get storage craftycannoneers:modifiers list

#Tracks line length and creates a new list for the next line if it exceeds this value
execute if score $modifiersLeft CmdData matches 1.. store result score $tempLineLength CmdData run data get storage craftycannoneers:modifiers length[-1]
execute if score $modifiersLeft CmdData matches 1.. run data remove storage craftycannoneers:modifiers length[-1]
execute if score $modifiersLeft CmdData matches 1.. run scoreboard players operation $thisLineLength CmdData += $tempLineLength CmdData
execute if score $modifiersLeft CmdData matches 1.. run scoreboard players add $thisLineLength CmdData 2
execute if score $modifiersLeft CmdData matches 1.. if score $thisLineLength CmdData > $maxLineLength CmdData run function lobby:customizer/modifiers/listnewline

#Recursion condition
execute if score $modifiersLeft CmdData matches 1.. run function lobby:customizer/modifiers/splitlist

#Resets
execute unless score $modifiersLeft CmdData matches 1.. run function lobby:customizer/modifiers/splitlistreset