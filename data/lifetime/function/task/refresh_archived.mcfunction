##
## Accessor for refresh_archived_rec. Remove any tasks from archived that do not exist in the all tasks dataset 
##
## Post:
## > lifetime:data tasks.archived is refreshed to ensure it doesn't contain any stale tasks

# Set up the refreshed task data
data modify storage lifetime:data tasks.archived_refreshed set value []

# Run the recursive archived task refresh function, starting with the first item in the archived tasks list
# > Only run if any tasks exist in the archived list
execute if data storage lifetime:data tasks.archived[] run function lifetime:task/refresh_archived_rec with storage lifetime:data tasks.archived[0]

# Once run is finished, set archived to archived_refreshed and remove archived refresh
data modify storage lifetime:data tasks.archived set from storage lifetime:data tasks.archived_refreshed
data remove storage lifetime:data tasks.archived_refreshed