##
## Return how many ticks remain in the current session
##
## Return:
## > The number of ticks remaining in the session

# Temp storage for ticks remaining
scoreboard players set #SessionTicksRemaining temp 0
# Add on hours in ticks
scoreboard players operation #SessionHoursInTicks temp = #session SessionHours
scoreboard players operation #SessionHoursInTicks temp *= #TICK_HOURS const
scoreboard players operation #SessionTicksRemaining temp += #SessionHoursInTicks temp
# Add on minutes in ticks
scoreboard players operation #SessionMinutesInTicks temp = #session SessionMinutes
scoreboard players operation #SessionMinutesInTicks temp *= #TICK_MINUTES const
scoreboard players operation #SessionTicksRemaining temp += #SessionMinutesInTicks temp
# Add on seconds in ticks
scoreboard players operation #SessionSecondsInTicks temp = #session SessionSeconds
scoreboard players operation #SessionSecondsInTicks temp *= #TICK_SECONDS const
scoreboard players operation #SessionTicksRemaining temp += #SessionSecondsInTicks temp
# Add on ticks
scoreboard players operation #SessionTicksRemaining temp += #session SessionTicks

# Return the final value
return run scoreboard players get #SessionTicksRemaining temp