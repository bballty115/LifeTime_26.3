##
## Reroll the current task. Keep it in the pool. Announce reroll and place on short cooldown
##

# Clear current task, reset player task statuses
function lifetime:task/manager/action/clear_current_reset_player_task_status

# Place on cooldown
scoreboard players operation #TaskManager TaskCooldownTicks = #TASK_SHORT_COOLDOWN_SECONDS const
scoreboard players operation #TaskManager TaskCooldownTicks *= #TICK_SECONDS const

# Announce the cooldown period
execute if score #TASK_SHORT_COOLDOWN_SECONDS const matches 2.. run tellraw @a [{"text": "Task has been rerolled. A new task will be announced in ",color:"green"},{score:{name:"#TASK_SHORT_COOLDOWN_SECONDS",objective:"const"}},{text:" seconds!"}]
execute unless score #TASK_SHORT_COOLDOWN_SECONDS const matches 2.. run tellraw @a [{"text": "Task has been rerolled. A new task will be announced in ",color:"green"},{score:{name:"#TASK_SHORT_COOLDOWN_SECONDS",objective:"const"}},{text:" second!"}]

# Tick cooldown [10]
function lifetime:task/manager/action/tick_cooldown