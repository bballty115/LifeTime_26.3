# Pre: Times to adjust in a player named #temp_times
# Pre: #temp_times has a defined TimeTicks, TimeSeconds, TimeMinutes, TimeHours
# Post: TimeTicks, TimeSeconds, TimeMinutes, TimeHours are correctly adjusted for #TempTime

### Numbers Lower Than Expected

# Pull ticks from second if ticks is too low
execute if score #temp_times TimeTicks matches ..-1 run scoreboard players remove #temp_times TimeSeconds 1
execute if score #temp_times TimeTicks matches ..-1 run scoreboard players add #temp_times TimeTicks 20

# Pull seconds from minute if seconds too low
execute if score #temp_times TimeSeconds matches ..-1 run scoreboard players remove #temp_times TimeMinutes 1
execute if score #temp_times TimeSeconds matches ..-1 run scoreboard players add #temp_times TimeSeconds 60

# Pull minute from hours if minute too low
execute if score #temp_times TimeMinutes matches ..-1 run scoreboard players remove #temp_times TimeHours 1
execute if score #temp_times TimeMinutes matches ..-1 run scoreboard players add #temp_times TimeMinutes 60

### Numbers Higher Than Expected

# If minutes too high, convert to hours instead
execute if score #temp_times TimeMinutes matches 60.. run scoreboard players add #temp_times TimeHours 1
execute if score #temp_times TimeMinutes matches 60.. run scoreboard players remove #temp_times TimeMinutes 60

# If seconds too high, convert to minutes instead
execute if score #temp_times TimeSeconds matches 60.. run scoreboard players add #temp_times TimeMinutes 1
execute if score #temp_times TimeSeconds matches 60.. run scoreboard players remove #temp_times TimeSeconds 60

# If ticks too high, convert to seconds instead
execute if score #temp_times TimeTicks matches 20.. run scoreboard players add #temp_times TimeSeconds 1
execute if score #temp_times TimeTicks matches 20.. run scoreboard players remove #temp_times TimeTicks 20
