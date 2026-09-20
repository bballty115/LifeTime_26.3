##
## Permissions for LoseTime
##

# Any player who has completed the current task can choose an active player to lose time
#!c scoreboard players reset @a LoseTime_USERNAME
# [Generated From Compiler]
scoreboard players reset @a LoseTime_bballty115
# [Generated From Compiler]
scoreboard players reset @a LoseTime_Puzzle_12
# [Generated From Compiler]
scoreboard players reset @a LoseTime_Jbloxx
# [Generated From Compiler]
scoreboard players reset @a LoseTime_heckyeahbirds
# [Generated From Compiler]
scoreboard players reset @a LoseTime_monobinoculus
# [Generated From Compiler]
scoreboard players reset @a LoseTime_SilverRH
# [Generated From Compiler]
scoreboard players reset @a LoseTime_Sakura_Kitty
# [Generated From Compiler]
scoreboard players reset @a LoseTime_Etcuniversal1
# [Generated From Compiler]
scoreboard players reset @a LoseTime_Firefei
# [Generated From Compiler]
scoreboard players reset @a LoseTime_Crazy_Crafter_12

#!c execute if entity @p[name="USERNAME",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_USERNAME
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_bballty115
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_Puzzle_12
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_Jbloxx
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_heckyeahbirds
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_monobinoculus
# [Generated From Compiler]
execute if entity @p[name="SilverRH",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_SilverRH
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_Sakura_Kitty
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_Etcuniversal1
# [Generated From Compiler]
execute if entity @p[name="Firefei",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_Firefei
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",scores={ActivePlayer=1}] run scoreboard players enable @a[scores={TaskStatus=2}] LoseTime_Crazy_Crafter_12
