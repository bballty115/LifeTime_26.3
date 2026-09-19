##
## Permissions for ToggleGamemode
##

# All spectators may toggle timer
scoreboard players reset @a ToggleGamemode
scoreboard players enable @a[scores={ActivePlayer=0}] ToggleGamemode