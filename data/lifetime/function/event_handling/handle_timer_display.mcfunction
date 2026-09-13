# NOTE: This file should only be used to handle timer display and nothing else (no ticking or calling other functions)

## Calculate TotalTimeTicks for Active players

scoreboard players set #TICKHOURS Counter 72000
scoreboard players set #TICKMINUTES Counter 1200
scoreboard players set #TICKSECONDS Counter 20

scoreboard players set @a TimeTotalTicks 0
# Store hours in ticks
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p Counter = @p TimeHours
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p Counter *= #TICKHOURS Counter
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p TimeTotalTicks += @p Counter
# Store minutes in ticks
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p Counter = @p TimeMinutes
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p Counter *= #TICKMINUTES Counter
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p TimeTotalTicks += @p Counter
# Store seconds in ticks
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p Counter = @p TimeSeconds
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p Counter *= #TICKSECONDS Counter
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p TimeTotalTicks += @p Counter
# Store ticks
execute at @a[scores={ActivePlayer=1}] run scoreboard players operation @p TimeTotalTicks += @p TimeTicks

## Update Session Bossbar

# Handle formatting of bossbar names when 0 padding is needed

# Pad minutes and seconds with 0
execute if score #session_time_remaining TimeMinutes matches ..9 run execute if score #session_time_remaining TimeSeconds matches ..9 run bossbar set session_timer name ["Session Timer - ", {"score":{"name":"#session_time_remaining","objective":"TimeHours"}}, ":0", {"score":{"name":"#session_time_remaining","objective":"TimeMinutes"}}, ":0", {"score":{"name":"#session_time_remaining","objective":"TimeSeconds"}}]
# Pad minutes with 0
execute if score #session_time_remaining TimeMinutes matches ..9 run execute if score #session_time_remaining TimeSeconds matches 10.. run bossbar set session_timer name ["Session Timer - ", {"score":{"name":"#session_time_remaining","objective":"TimeHours"}}, ":0", {"score":{"name":"#session_time_remaining","objective":"TimeMinutes"}}, ":", {"score":{"name":"#session_time_remaining","objective":"TimeSeconds"}}]
# Pad seconds with 0
execute if score #session_time_remaining TimeMinutes matches 10.. run execute if score #session_time_remaining TimeSeconds matches ..9 run bossbar set session_timer name ["Session Timer - ", {"score":{"name":"#session_time_remaining","objective":"TimeHours"}}, ":", {"score":{"name":"#session_time_remaining","objective":"TimeMinutes"}}, ":0", {"score":{"name":"#session_time_remaining","objective":"TimeSeconds"}}]
# No padding
execute if score #session_time_remaining TimeMinutes matches 10.. run execute if score #session_time_remaining TimeSeconds matches 10.. run bossbar set session_timer name ["Session Timer - ", {"score":{"name":"#session_time_remaining","objective":"TimeHours"}}, ":", {"score":{"name":"#session_time_remaining","objective":"TimeMinutes"}}, ":", {"score":{"name":"#session_time_remaining","objective":"TimeSeconds"}}]

# Store the countdown for the session_timer into a boss bar
execute store result bossbar session_timer value run scoreboard players get #session_time_remaining Counter

# TODO - Determine if session timer should change color over the course of the session? For now it is blue
bossbar set session_timer color blue


## Update Player Bossbars

# Handle formatting of bossbar names when 0 padding is needed

# Pad minutes and seconds with 0
execute if score bballty115 TimeMinutes matches ..9 run execute if score bballty115 TimeSeconds matches ..9 run bossbar set bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"TimeHours"}}, ":0", {"score":{"name":"bballty115","objective":"TimeMinutes"}}, ":0", {"score":{"name":"bballty115","objective":"TimeSeconds"}}]
# Pad minutes with 0
execute if score bballty115 TimeMinutes matches ..9 run execute if score bballty115 TimeSeconds matches 10.. run bossbar set bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"TimeHours"}}, ":0", {"score":{"name":"bballty115","objective":"TimeMinutes"}}, ":", {"score":{"name":"bballty115","objective":"TimeSeconds"}}]
# Pad seconds with 0
execute if score bballty115 TimeMinutes matches 10.. run execute if score bballty115 TimeSeconds matches ..9 run bossbar set bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"TimeHours"}}, ":", {"score":{"name":"bballty115","objective":"TimeMinutes"}}, ":0", {"score":{"name":"bballty115","objective":"TimeSeconds"}}]
# No padding
execute if score bballty115 TimeMinutes matches 10.. run execute if score bballty115 TimeSeconds matches 10.. run bossbar set bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"TimeHours"}}, ":", {"score":{"name":"bballty115","objective":"TimeMinutes"}}, ":", {"score":{"name":"bballty115","objective":"TimeSeconds"}}]

# Store the totaltimeticks for the each player into their respective bossbar
execute store result bossbar bballty115 value run scoreboard players get bballty115 TimeTotalTicks

# Set bossbar color based on player team
# Due to how teams work, I can't just check if player is on team directly, rather
#  I'm just going to check if the player meets the criteria to be on that team
execute if score bballty115 TimeHours matches 16.. run bossbar set bballty115 color green
execute if score bballty115 TimeHours matches 8..15 run bossbar set bballty115 color yellow
execute if score bballty115 TimeHours matches 0..7 run execute if score bballty115 ActivePlayer matches 1 run bossbar set bballty115 color red
execute if score bballty115 ActivePlayer matches 0 run bossbar set bballty115 color white


## Handle session_timer Toggling

# Toggle disabled players bossbar to enabled
scoreboard players set @a[scores={ToggleTimer=1, TimerEnabled=0}] ToggleTimer 2
scoreboard players set @a[scores={ToggleTimer=2, TimerEnabled=0}] TimerEnabled 1
scoreboard players set @a[scores={ToggleTimer=2, TimerEnabled=1}] ToggleTimer 0

# Toggle enabled players bossbar to disabled
scoreboard players set @a[scores={ToggleTimer=1, TimerEnabled=1}] ToggleTimer 2
scoreboard players set @a[scores={ToggleTimer=2, TimerEnabled=1}] TimerEnabled 0
scoreboard players set @a[scores={ToggleTimer=2, TimerEnabled=0}] ToggleTimer 0


## Handle session_timer Display

# Show session bossbar to all players with timer enabled
bossbar set session_timer players @a[scores={TimerEnabled=1}]

# Show lifetime bossbar to all players with timer disabled
execute if score bballty115 TimerEnabled matches 0 run bossbar set bballty115 players bballty115
execute if score bballty115 TimerEnabled matches 1 run bossbar set bballty115 players
