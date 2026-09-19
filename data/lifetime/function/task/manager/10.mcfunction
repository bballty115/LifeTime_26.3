##
## Tick cooldown for task, select and announce task once complete
##

# If off cooldown, update status to 11 (Select and announce)
execute if score #TaskManager TaskCooldownTicks matches ..0 run function lifetime:task/manager/action/select_and_announce

# If on cooldown, tick down 1
execute if score #TaskManager TaskCooldownTicks matches 1.. run scoreboard players remove #TaskManager TaskCooldownTicks 1
