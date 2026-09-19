##
## Toggle a player timer
##
## Executor: Player who triggered ToggleTimer

# Timer Codes: 
# > 0 = No Timer
# > 1 = Session Timer
# > 2 = Life Timer

# Add one to timer, mod 3, store result in DisplayTimerId
# If player is spectator, mod 2 isntead
scoreboard players add @s DisplayTimerId 1
execute if score @s ActivePlayer matches 1 run scoreboard players operation @s DisplayTimerId %= 3 const
execute if score @s ActivePlayer matches 0 run scoreboard players operation @s DisplayTimerId %= 2 const