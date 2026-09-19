##
## Place a task on cooldown
##

# Place on cooldown in ticks
scoreboard players operation #TaskManager TaskCooldownTicks = #TASK_COOLDOWN_MINUTES const
scoreboard players operation #TaskManager TaskCooldownTicks *= #TICK_MINUTES const