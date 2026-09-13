# Tell all players who have the "ShowTime" flag enabled how much time they have left
# Handle padding of 0s accordingly

# Pad hours, minutes, seconds with 0
tellraw @a[scores={ShowTime=1.., TimeHours=..9, TimeMinutes=..9, TimeSeconds=..9}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"TimeHours"}},":0",{"score":{"name":"*","objective":"TimeMinutes"}},":0",{"score":{"name":"*","objective":"TimeSeconds"}}]
# Pad hours, minutes with 0
tellraw @a[scores={ShowTime=1.., TimeHours=..9, TimeMinutes=..9, TimeSeconds=10..}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"TimeHours"}},":0",{"score":{"name":"*","objective":"TimeMinutes"}},":",{"score":{"name":"*","objective":"TimeSeconds"}}]
# Pad hours, seconds with 0
tellraw @a[scores={ShowTime=1.., TimeHours=..9, TimeMinutes=10.., TimeSeconds=..9}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"TimeHours"}},":",{"score":{"name":"*","objective":"TimeMinutes"}},":0",{"score":{"name":"*","objective":"TimeSeconds"}}]
# Pad minutes, seconds with 0
tellraw @a[scores={ShowTime=1.., TimeHours=10.., TimeMinutes=..9, TimeSeconds=..9}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"TimeHours"}},":0",{"score":{"name":"*","objective":"TimeMinutes"}},":0",{"score":{"name":"*","objective":"TimeSeconds"}}]
# Pad hours with 0
tellraw @a[scores={ShowTime=1.., TimeHours=..9, TimeMinutes=10.., TimeSeconds=10..}] [{"text":"Time remaining: 0"}, {"score":{"name":"*","objective":"TimeHours"}},":",{"score":{"name":"*","objective":"TimeMinutes"}},":",{"score":{"name":"*","objective":"TimeSeconds"}}]
# Pad minutes with 0
tellraw @a[scores={ShowTime=1.., TimeHours=10.., TimeMinutes=..9, TimeSeconds=10..}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"TimeHours"}},":0",{"score":{"name":"*","objective":"TimeMinutes"}},":",{"score":{"name":"*","objective":"TimeSeconds"}}]
# Pad seconds with 0
tellraw @a[scores={ShowTime=1.., TimeHours=10.., TimeMinutes=10.., TimeSeconds=..9}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"TimeHours"}},":",{"score":{"name":"*","objective":"TimeMinutes"}},":0",{"score":{"name":"*","objective":"TimeSeconds"}}]
# Pad nothing
tellraw @a[scores={ShowTime=1.., TimeHours=10.., TimeMinutes=10.., TimeSeconds=10..}] [{"text":"Time remaining: "}, {"score":{"name":"*","objective":"TimeHours"}},":",{"score":{"name":"*","objective":"TimeMinutes"}},":",{"score":{"name":"*","objective":"TimeSeconds"}}]


# Re-enable all players to use this command
scoreboard players enable @a ShowTime

# Reset the flag for this command
scoreboard players set @a ShowTime 0