##
## Handle player death
##
## Executor: A player with a PlayerDied score of 1 or greater
##
## Post: Reset PlayerDied flag for this player

# Dead players lose an hour
scoreboard players remove @s PlayerLifeHours 1

# Reset the PlayerDied flag for this player
scoreboard players reset @s PlayerDied