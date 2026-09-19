##
## Toggle admin status for a player
##
## Executor: A player to toggle admin status for

# If player is admin, remove admin status and return
execute if score @s PlayerAdmin matches 1 run return run scoreboard players reset @s PlayerAdmin
# If player is not admin, add admin status
scoreboard players set @s PlayerAdmin 1