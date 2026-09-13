# Set the session to active and the session time to 2 hours (144000 ticks)
scoreboard players set #session_active Counter 1
scoreboard players set #session_time_remaining Counter 144000
scoreboard players set #session_time_remaining TimeHours 2
scoreboard players set #session_time_remaining TimeMinutes 0
scoreboard players set #session_time_remaining TimeSeconds 0
scoreboard players set #session_time_remaining TimeTicks 0

# Reset the task such that none is selected
scoreboard players set #task_selected Counter 0
scoreboard players set #task_announced Counter 0

# Reset all players task status, prompted for reroll flag, task rerolled flag and votes for a reroll
scoreboard players set @a TaskStatus 0
scoreboard players set @a PromptedReroll 0
scoreboard players set #task_rerolled Counter 0
scoreboard players set #reroll_votes Counter 0
