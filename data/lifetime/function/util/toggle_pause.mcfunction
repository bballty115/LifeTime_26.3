##
## Toggle between game paused and unpaused
##

# If the game is paused, unpause it and announce
execute if function lifetime:util/is_game_paused run tellraw @a [{color:"yellow", text:"THE GAME IS UNPAUSED\nYou may resume gameplay as normal."}]
execute if function lifetime:util/is_game_paused run return run scoreboard players set #game PauseGame 0

# Otherwise, pause it and announce
tellraw @a [{color:"yellow", text:"THE GAME IS CURRENTLY PAUSED\nPlease stay where you are until gameplay is resumed."}]
scoreboard players set #game PauseGame 1