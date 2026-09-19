##
## Handle a player voting for rerolling a session task
##
## Executor: Player who triggered SessionTaskRerollVote

# Set this player's vote score to 1
scoreboard players set @s PlayerSessionTaskRerollVote 1

# Store the total number of reroll votes and votes needed for a reroll
execute store result score #reroll_votes temp if entity @a[scores={ActivePlayer=1,PlayerSessionTaskRerollVote=1..}]
execute store result score #reroll_votes_needed temp if entity @a[scores={ActivePlayer=1}]
scoreboard players add #reroll_votes_needed temp 1
scoreboard players operation #reroll_votes_needed temp /= 2 const

# Announce this player has voted for a reroll
tellraw @a [{"selector": "@s", "color": "yellow"}, {"text": " has voted for a reroll. ("}, {"score": {"name": "#reroll_votes","objective": "temp"}}, {"text": " / "}, {"score": {"name": "#reroll_votes_needed","objective": "temp"}}, {"text":")"}]

# If this is enough players, trigger a reroll and mark that the session reroll has been used
execute if score #reroll_votes temp >= #reroll_votes_needed temp run scoreboard players set #session SessionTaskRerolled 1
execute if score #reroll_votes temp >= #reroll_votes_needed temp run function lifetime:task/manager/action/reroll_current