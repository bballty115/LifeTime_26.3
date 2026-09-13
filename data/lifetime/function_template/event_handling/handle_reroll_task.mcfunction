# This function is only called if a player has prompted for a reroll.
# In the event that multiple players prompted on the same tick, just select one at random
scoreboard players set @r[scores={Reroll=1}] Reroll 2

# Mark that this player has prompted for a reroll so they can not vote for the reroll again
scoreboard players set @p[scores={Reroll=2}] PromptedReroll 1

# Add one to the number of players who voted for a reroll
scoreboard players add #reroll_votes Counter 1

# Store the number of active players
execute store result score #active_players Counter if entity @a[scores={ActivePlayer=1}]

# Store the number 2 in a scoreboard (only way to do multiply by 2 lol)
scoreboard players set #the_number_two Counter 2

# Announce number of players who voted for a reroll and the player who voted for this reroll
tellraw @a [{"selector": "@p[scores={Reroll=2}]", "color": "yellow"}, {"text": " has voted for a reroll. ("}, {"score": {"name": "#reroll_votes","objective": "Counter"}}, {"text": " / "}, {"score": {"name": "#active_players","objective": "Counter"}}, {"text":")"}]

# Multiply number of players who voted for reroll by 2
scoreboard players operation #reroll_votes Counter *= #the_number_two Counter

# If this number is greater than the number of active players, reroll the task and announce that a reroll happened
# This is achieved by reseting all flags denoting a task was selected, storing that a task has been rerolled and then announcing that a reroll has occured
execute if score #reroll_votes Counter > #active_players Counter run scoreboard players set #task_selected Counter 0
execute if score #reroll_votes Counter > #active_players Counter run scoreboard players set #task_announced Counter 0
execute if score #reroll_votes Counter > #active_players Counter run scoreboard players set @a TaskStatus 0
execute if score #reroll_votes Counter > #active_players Counter run tellraw @a {"text": "The task has been rerolled!"}
execute if score #reroll_votes Counter > #active_players Counter run scoreboard players set #task_rerolled Counter 1

# Divide the number of players who voted for reroll by 2
scoreboard players operation #reroll_votes Counter /= #the_number_two Counter
