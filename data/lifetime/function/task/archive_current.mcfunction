##
## Archive the current task
##
## Post:
## > If the current task was in the pool, it is moved from tasks.pool to tasks.archived
## > lifetime:data tasks.current is set to {id:0}

# Archive the current task
function lifetime:task/archive_task with storage lifetime:data tasks.current
# Set the current task to id 0 (No task)
data modify storage lifetime:data tasks.current set value {id:0}