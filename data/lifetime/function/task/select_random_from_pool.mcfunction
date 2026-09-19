##
## Accessor method for selecting a random task from the pool. Will assign to current
##
## Post:
## > lifetime:data tasks.current is set to a random task from the pool
##
## Return:
## > 0 If no task selected due to no tasks remaining
## > 1 If task selected

# Store the total number of tasks in a temp value
execute store result score #temp temp run execute if data storage lifetime:data tasks.pool[]

# If there are no tasks, return 0
execute if score #temp temp matches 0 run return fail

# Otherwise, select a random index and assign as the current task
execute store result storage lifetime:data params.length int 1 run scoreboard players get #temp temp
execute store result storage lifetime:data params.index int 1 run function lifetime:util/random_index with storage lifetime:data params
function lifetime:task/select_from_pool with storage lifetime:data params
data remove storage lifetime:data params
return 1