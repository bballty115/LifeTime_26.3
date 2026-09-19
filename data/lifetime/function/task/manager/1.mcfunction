##
## Place on standard cooldown, announce (No task -> Task)
## 

# Ensure there is no active task and all players have a cleared task status
function lifetime:task/manager/action/clear_current_reset_player_task_status

# Place on cooldown
scoreboard players operation #TaskManager TaskCooldownTicks = #TASK_COOLDOWN_MINUTES const
scoreboard players operation #TaskManager TaskCooldownTicks *= #TICK_MINUTES const

# Announce the cooldown period
execute if score #TASK_COOLDOWN_MINUTES const matches 2.. run tellraw @a [{"text": "A task will be selected in ",color:"green"},{score:{name:"#TASK_COOLDOWN_MINUTES",objective:"const"}},{text:" minutes!"}]
execute unless score #TASK_COOLDOWN_MINUTES const matches 2.. run tellraw @a [{"text": "A task will be selected in ",color:"green"},{score:{name:"#TASK_COOLDOWN_MINUTES",objective:"const"}},{text:" minute!"}]

# Tick cooldown [10]
function lifetime:task/manager/action/tick_cooldown