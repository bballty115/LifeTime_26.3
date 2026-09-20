##
## Handle a player selected to lose time due to a completed task
##
## Executor: Player who triggered LoseTime for some player

# Note: The following 2 lines are a failsafe. I am afraid that a player can find a way to trigger
#       multiple of these in one tick (Lag, spam click). To prevent multiple occurences of this, a
#       player loses their "task complete" status the first time this is triggered. A player without this
#       status will return from the function.
# Only run if player has completed the task and not claimed rewards yet
execute unless score @s TaskStatus matches 2 run return fail
# Reset the task status for this player
scoreboard players set @s TaskStatus 0

# Grant this player 1 hour of time back
scoreboard players operation @s PlayerLifeMinutes += #LIFE_GAIN_TASK_COMPLETE_MINUTES const

# Officially mark current task as complete
function lifetime:task/manager/action/current_complete

# Announce targeted player and return
#!c execute if score @s LoseTime_USERNAME matches 1 run tellraw @a {text:"USERNAME has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_bballty115 matches 1 run tellraw @a {text:"bballty115 has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_Puzzle_12 matches 1 run tellraw @a {text:"Puzzle_12 has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_Jbloxx matches 1 run tellraw @a {text:"Jbloxx has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_heckyeahbirds matches 1 run tellraw @a {text:"heckyeahbirds has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_monobinoculus matches 1 run tellraw @a {text:"monobinoculus has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_SilverRH matches 1 run tellraw @a {text:"SilverRH has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_Sakura_Kitty matches 1 run tellraw @a {text:"Sakura_Kitty has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_Etcuniversal1 matches 1 run tellraw @a {text:"Etcuniversal1 has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_Firefei matches 1 run tellraw @a {text:"Firefei has lost time.", color:"blue"}
# [Generated From Compiler]
execute if score @s LoseTime_Crazy_Crafter_12 matches 1 run tellraw @a {text:"Crazy_Crafter_12 has lost time.", color:"blue"}

# Remove time from the indicated player and return
#!c execute if score @s LoseTime_USERNAME matches 1 run return run scoreboard players operation USERNAME PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_bballty115 matches 1 run return run scoreboard players operation bballty115 PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_Puzzle_12 matches 1 run return run scoreboard players operation Puzzle_12 PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_Jbloxx matches 1 run return run scoreboard players operation Jbloxx PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_heckyeahbirds matches 1 run return run scoreboard players operation heckyeahbirds PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_monobinoculus matches 1 run return run scoreboard players operation monobinoculus PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_SilverRH matches 1 run return run scoreboard players operation SilverRH PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_Sakura_Kitty matches 1 run return run scoreboard players operation Sakura_Kitty PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_Etcuniversal1 matches 1 run return run scoreboard players operation Etcuniversal1 PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_Firefei matches 1 run return run scoreboard players operation Firefei PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const
# [Generated From Compiler]
execute if score @s LoseTime_Crazy_Crafter_12 matches 1 run return run scoreboard players operation Crazy_Crafter_12 PlayerLifeMinutes -= #LIFE_LOSS_TASK_FAIL_MINUTES const


