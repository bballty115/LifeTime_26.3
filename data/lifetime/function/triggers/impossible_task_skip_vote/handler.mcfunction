##
## Handle a player voting to skip an impossible task
##
## Executor: Player who triggered ImpossibleTaskSkipVote

## Todo: Maybe account for edge case where all but one player has voted, and then one dies, making it impossible to trigger this

# Set this player's vote score to 1
scoreboard players set @s PlayerImpossibleTaskSkipVote 1

# Store the total number of skip votes and votes needed for a skip
execute store result score #skip_votes temp if entity @a[scores={ActivePlayer=1,PlayerImpossibleTaskSkipVote=1..}]
execute store result score #skip_votes_needed temp if entity @a[scores={ActivePlayer=1}]

# Announce this player has voted for a skip
tellraw @a [{"selector": "@s", "color": "yellow"}, {"text": " has voted to skip an impossible task. ("}, {"score": {"name": "#skip_votes","objective": "temp"}}, {"text": " / "}, {"score": {"name": "#skip_votes_needed","objective": "temp"}}, {"text":")"}]

# Trigger a reroll if enough players have voted
execute if score #skip_votes temp >= #skip_votes_needed temp run function lifetime:task/manager/action/skip_current