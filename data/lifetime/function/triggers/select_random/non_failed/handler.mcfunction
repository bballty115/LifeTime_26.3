##
## Select and announce a random player who has not failed the current task
##
## Executor: Player who triggered SelectRandomNonFailed

# Select random non-failed player, announce them
tellraw @a [{"selector": "@r[scores={ActivePlayer=1,TaskStatus=0}]", "color": "blue"}, {"text": " was randomly selected! [Prompted by ", "color": "white"}, {"selector": "@s", "color": "yellow"}, {"text": "]", "color": "white"}]