# Assign teams to players based on their lives
team join green @a[scores={ActivePlayer=1,TimeHours=16..}]
team join yellow @a[scores={ActivePlayer=1,TimeHours=8..15}]
team join red @a[scores={ActivePlayer=1,TimeHours=0..7}]

# Players with no time left are banished to the shadow realm
# Play a little jingle when this happens
execute if score @p[scores={ActivePlayer=1,TimeHours=..-1}] TimeHours matches ..-1 run playsound block.end_portal.spawn player @a ~ ~ ~ 1 1 1
team leave @a[scores={ActivePlayer=1,TimeHours=..-1}]

# Announce player death to server
execute if score USERNAME TimeHours matches ..-1 run execute if score USERNAME ActivePlayer matches 1 run title @a title [{"text": "USERNAME timed out", "color": "red"}]

# Set player to spectator if they are out
gamemode spectator @a[scores={TimeHours=..-1, ActivePlayer=1}]

scoreboard players set @a[scores={ActivePlayer=1, TimeHours=..-1}] ActivePlayer 0

# Non active players have no minutes, hours, seconds or ticks
scoreboard players set @a[scores={ActivePlayer=0}] TimeHours 0
scoreboard players set @a[scores={ActivePlayer=0}] TimeMinutes 0
scoreboard players set @a[scores={ActivePlayer=0}] TimeSeconds 0
scoreboard players set @a[scores={ActivePlayer=0}] TimeTicks 0