##
## Refresh the archived tasks list. If a task in the list does not exist in the all tasks dataset, remove.
##
## Pre:
## > lifetime:data tasks.archived_refreshed is an empty list
##
## Parameters:
## > id: A task id in the archived list
##
## Post:
## > lifetime:data tasks.archived_refreshed is the updated list of archived tasks
## > lifetime:data tasks.archived is empty

# If task with given id exists, keep it
$execute if data storage lifetime:data tasks.all.$(id) run data modify storage lifetime:data tasks.archived_refreshed append value {id:$(id)}

# Remove this value from the archived tasks list
$data remove storage lifetime:data tasks.archived[{id:$(id)}]

# If data remains in the list, call again with next element
execute if data storage lifetime:data tasks.archived[] run function lifetime:task/refresh_archived_rec with storage lifetime:data tasks.archived[0]