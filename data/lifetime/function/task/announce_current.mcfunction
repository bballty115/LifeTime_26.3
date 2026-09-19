##
## Announce the current task to a player
##
## Executor: A player to announce the current task to

# If no current task, notify player and return
execute store result score #temp temp run data get storage lifetime:data tasks.current.id 1
execute if score #temp temp matches 0 run return run tellraw @s {text:"\nNo current task.\n"}

# Otherwise, announce the current task
function lifetime:task/announce_task with storage lifetime:data tasks.current