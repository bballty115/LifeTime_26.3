##
## Permissions for CurrentTask
##

# All players may see current task if there is a task available
scoreboard players reset @a CurrentTask
execute if function lifetime:task/manager/action/is_task_active run scoreboard players enable @a CurrentTask