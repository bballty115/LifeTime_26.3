##
## Select a task from the task pool, given its index
##
## Params:
## > index: A valid task id to select
##
## Pre:
## > index paramater is within the bounds of the task pool array
##
## Post:
## > lifetime:data tasks.current is set to the task at the provided index from the task pool

# Set the task id to the current task
$data modify storage lifetime:data tasks.current set from storage lifetime:data tasks.pool[$(index)]