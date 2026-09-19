##
## Select a task from the pool as the current task and announce it. If no tasks remain in pool, announce it.
##

# Select a random task from the pool
execute store result score #temp temp run function lifetime:task/select_random_from_pool


# If there are no tasks in the pool, notify that there are no tasks remaining in the pool and update the task status [0]
execute if score #temp temp matches 0 run tellraw @a {text:"[Warning] There are no more tasks left to select.","color":"yellow"}
execute if score #temp temp matches 0 run function lifetime:task/manager/action/mark_no_active
execute if score #temp temp matches 0 run return fail

# Otherwise, if there are tasks remaining in the pool, announce the task and update the task status [12]
execute as @a run function lifetime:task/announce_current
function lifetime:task/manager/action/mark_active
