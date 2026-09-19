##
## Toggle a spectators gamemode
##
## Executor: Player who triggered ToggleGamemode

# Place in spectator if in survival
execute if entity @s[gamemode=survival] run return run gamemode spectator @s
# Place in survival if in spectator
execute if entity @s[gamemode=spectator] run return run gamemode survival @s