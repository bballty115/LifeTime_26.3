##
## Archive a task by id. Remove from pool, add to archived. Fails if task is not in pool
##
## Parameters:
## > id: Current task id

# If the current task id is in the pool, archive it and remove from the pool
$execute if data storage lifetime:data tasks.pool[{id:$(id)}] run data modify storage lifetime:data tasks.archived append value {id:$(id)}
$execute if data storage lifetime:data tasks.pool[{id:$(id)}] run data remove storage lifetime:data tasks.pool[{id:$(id)}]