##
## Place on standard cooldown, announce (Task -> Task)
## 

# Place on cooldown
scoreboard players operation #TaskManager TaskCooldownTicks = #TASK_COOLDOWN_MINUTES const
scoreboard players operation #TaskManager TaskCooldownTicks *= #TICK_MINUTES const

# Announce the cooldown period
execute if score #TASK_COOLDOWN_MINUTES const matches 2.. run tellraw @a [{"text": "A new task will be selected in ",color:"green"},{score:{name:"#TASK_COOLDOWN_MINUTES",objective:"const"}},{text:" minutes!"}]
execute unless score #TASK_COOLDOWN_MINUTES const matches 2.. run tellraw @a [{"text": "A new task will be selected in ",color:"green"},{score:{name:"#TASK_COOLDOWN_MINUTES",objective:"const"}},{text:" minute!"}]

# Tick cooldown [10]
function lifetime:task/manager/action/tick_cooldown