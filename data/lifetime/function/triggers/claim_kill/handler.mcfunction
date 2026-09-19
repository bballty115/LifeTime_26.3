##
## Confirm a player kill to gain time
##
## Executor: Player who triggered ClaimKill

# Grant this player time for their kill
scoreboard players operation @s PlayerLifeMinutes += #LIFE_GAIN_PLAYER_KILL_MINUTES const
# Announce to server
tellraw @a [{selector:"@s"},{"text": " has claimed credit for a kill!", "color":"yellow"}]