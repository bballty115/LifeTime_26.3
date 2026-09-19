##
## Return how many ticks remain for a players life bar
##
## Executor: A player to get remaining life ticks for
##
## Return:
## > The number of life ticks remaining for this player

# Temp storage for ticks remaining
scoreboard players set #LifeTicksRemaining temp 0
# Add on hours in ticks
scoreboard players operation #LifeHoursInTicks temp = @s PlayerLifeHours
scoreboard players operation #LifeHoursInTicks temp *= #TICK_HOURS const
scoreboard players operation #LifeTicksRemaining temp += #LifeHoursInTicks temp
# Add on minutes in ticks
scoreboard players operation #LifeMinutesInTicks temp = @s PlayerLifeMinutes
scoreboard players operation #LifeMinutesInTicks temp *= #TICK_MINUTES const
scoreboard players operation #LifeTicksRemaining temp += #LifeMinutesInTicks temp
# Add on seconds in ticks
scoreboard players operation #LifeSecondsInTicks temp = @s PlayerLifeSeconds
scoreboard players operation #LifeSecondsInTicks temp *= #TICK_SECONDS const
scoreboard players operation #LifeTicksRemaining temp += #LifeSecondsInTicks temp
# Add on ticks
scoreboard players operation #LifeTicksRemaining temp += @s PlayerLifeTicks

# Return the final value
return run scoreboard players get #LifeTicksRemaining temp