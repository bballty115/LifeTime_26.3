##
## Select and announce a random active player in chat
##
## Executor: Player who triggered SelectRandomActive

# Select random active player, announce them
tellraw @a [{"selector": "@r[scores={ActivePlayer=1}]", "color": "blue"}, {"text": " was randomly selected! [Prompted by ", "color": "white"}, {"selector": "@s", "color": "yellow"}, {"text": "]", "color": "white"}]