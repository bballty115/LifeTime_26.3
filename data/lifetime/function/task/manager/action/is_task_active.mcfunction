##
## Return if a task is active
##
## Return
## > 1 if task is active
## > 0 if no task active

# A task is active if the manager has a code of 12
return run execute if score #TaskManager TaskStatus matches 12