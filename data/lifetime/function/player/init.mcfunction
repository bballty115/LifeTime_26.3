##
## Set starting values for a player
##
## Executor: A player

# Set admin status, if applicable
#!c scoreboard players set @s[name="ADMINUSERNAME"] PlayerAdmin 1
# [Generated From Compiler]
scoreboard players set @s[name="bballty115"] PlayerAdmin 1
# [Generated From Compiler]
scoreboard players set @s[name="SilverRH"] PlayerAdmin 1

# Set active player status, if applicable
#!c scoreboard players set @s[name="USERNAME"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="bballty115"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="Hungus"] ActivePlayer 1

# Set active players starting time to 24 hours
scoreboard players set @s[scores={ActivePlayer=1}] PlayerLifeHours 24
scoreboard players set @s[scores={ActivePlayer=1}] PlayerLifeMinutes 0
scoreboard players set @s[scores={ActivePlayer=1}] PlayerLifeSeconds 0
scoreboard players set @s[scores={ActivePlayer=1}] PlayerLifeTicks 0

# Set active player bossbar maximum
#!c execute store result bossbar lifetime_USERNAMELOWER max as @s[name="USERNAME"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_bballty115 max as @s[name="bballty115"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_hungus max as @s[name="Hungus"] run function lifetime:player/life_ticks_remaining

# Reset an active players death counter
scoreboard players reset @s[scores={ActivePlayer=1}] PlayerDied