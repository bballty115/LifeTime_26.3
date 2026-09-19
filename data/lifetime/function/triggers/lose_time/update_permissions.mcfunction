##
## Permissions for LoseTime
##

# Any player who has completed the current task can choose an active player to lose time
#!c scoreboard players reset @a LoseTime_USERNAME
# [Generated From Compiler]
scoreboard players reset @a LoseTime_bballty115
# [Generated From Compiler]
scoreboard players reset @a LoseTime_Hungus

#!c execute if entity @p[name="USERNAME",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_USERNAME
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_bballty115
# [Generated From Compiler]
execute if entity @p[name="Hungus",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_Hungus
