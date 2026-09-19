##
## Handle ticking the task manager
##

# Scores stored in TaskManager #TaskStatus

#
#        Game-Assigned Task Status
#

# [1] Place on standard cooldown, announce (No task -> Task)
execute if score #TaskManager TaskStatus matches 1 run function lifetime:task/manager/1

# [2] Reroll task, keep in pool, announce and reschedule
execute if score #TaskManager TaskStatus matches 2 run function lifetime:task/manager/2

# [3] Skip task, remove from pool, announce and reschedule
execute if score #TaskManager TaskStatus matches 3 run function lifetime:task/manager/3

# [4] Recycle task, keep in pool, announce and reschedule
execute if score #TaskManager TaskStatus matches 4 run function lifetime:task/manager/4

# [5] Archive current task, announce if current task
execute if score #TaskManager TaskStatus matches 5 run function lifetime:task/manager/5

# [6] Current task complete. Schedule new task if time permits, announce
execute if score #TaskManager TaskStatus matches 6 run function lifetime:task/manager/6

# [7] Schedule new task, place on standard cooldown, announce (Task -> Task)
execute if score #TaskManager TaskStatus matches 7 run function lifetime:task/manager/7


#
#        Internal Task Status
#

# [0] No active task, no action needed
execute if score #TaskManager TaskStatus matches 0 run return 1

# [10] Ticking Cooldown
execute if score #TaskManager TaskStatus matches 10 run function lifetime:task/manager/10

# [11] Select and announce task
execute if score #TaskManager TaskStatus matches 11 run function lifetime:task/manager/11

# [12] Task Active
execute if score #TaskManager TaskStatus matches 12 run return 1