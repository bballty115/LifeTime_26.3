##
## Initialize the task pool
##

# Setup looks like the following
# lifetime:tasks
#   - all: {TaskId: {TaskName, TaskDescription}}
#   - pool: [TaskId, TaskId, TaskId]
#   - current: TaskId
#   - archived: [TaskId, TaskId, TaskId]

# Set no archived tasks
data modify storage lifetime:data tasks.archived set value []

# Refresh the pool
# > Populate all tasks
# > Populate pool with all tasks
# > Usually ensures archived tasks are not added to pool, but since archive is empty, it just adds all tasks to pool
function lifetime:task/refresh_pool

# Set no current task
data modify storage lifetime:data tasks.current set value {id:0}