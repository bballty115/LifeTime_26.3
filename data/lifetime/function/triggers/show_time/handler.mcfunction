##
## Show a player their current remaining time in chat
##
## Executor: Player who triggered ShowTime

# Pad hours, minutes, seconds with 0
tellraw @s[scores={PlayerLifeHours=..9, PlayerLifeMinutes=..9, PlayerLifeSeconds=..9}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":0",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":0",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]
# Pad hours, minutes with 0
tellraw @s[scores={PlayerLifeHours=..9, PlayerLifeMinutes=..9, PlayerLifeSeconds=10..}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":0",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]
# Pad hours, seconds with 0
tellraw @s[scores={PlayerLifeHours=..9, PlayerLifeMinutes=10.., PlayerLifeSeconds=..9}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":0",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]
# Pad minutes, seconds with 0
tellraw @s[scores={PlayerLifeHours=10.., PlayerLifeMinutes=..9, PlayerLifeSeconds=..9}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":0",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":0",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]
# Pad hours with 0
tellraw @s[scores={PlayerLifeHours=..9, PlayerLifeMinutes=10.., PlayerLifeSeconds=10..}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]
# Pad minutes with 0
tellraw @s[scores={PlayerLifeHours=10.., PlayerLifeMinutes=..9, PlayerLifeSeconds=10..}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":0",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]
# Pad seconds with 0
tellraw @s[scores={PlayerLifeHours=10.., PlayerLifeMinutes=10.., PlayerLifeSeconds=..9}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":0",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]
# Pad nothing
tellraw @s[scores={PlayerLifeHours=10.., PlayerLifeMinutes=10.., PlayerLifeSeconds=10..}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"PlayerLifeHours"}},":",{"score":{"name":"*","objective":"PlayerLifeMinutes"}},":",{"score":{"name":"*","objective":"PlayerLifeSeconds"}}]