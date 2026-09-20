##
## Set starting values for a player
##
## Executor: A player

## Remove items that players can not craft
# Remove enchant table bookshelf and tnt
gamerule limited_crafting true
recipe give @s *
recipe take @s minecraft:enchanting_table
recipe take @s minecraft:bookshelf
recipe take @s minecraft:tnt

# Set admin status, if applicable
#!c scoreboard players set @s[name="ADMINUSERNAME"] PlayerAdmin 1
# [Generated From Compiler]
scoreboard players set @s[name="bballty115"] PlayerAdmin 1

# Set active player status, if applicable
#!c scoreboard players set @s[name="USERNAME"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="bballty115"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="Puzzle_12"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="Jbloxx"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="heckyeahbirds"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="monobinoculus"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="SilverRH"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="Sakura_Kitty"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="Etcuniversal1"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="Firefei"] ActivePlayer 1
# [Generated From Compiler]
scoreboard players set @s[name="Crazy_Crafter_12"] ActivePlayer 1

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
execute store result bossbar lifetime_puzzle_12 max as @s[name="Puzzle_12"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_jbloxx max as @s[name="Jbloxx"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_heckyeahbirds max as @s[name="heckyeahbirds"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_monobinoculus max as @s[name="monobinoculus"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_silverrh max as @s[name="SilverRH"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_sakura_kitty max as @s[name="Sakura_Kitty"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_etcuniversal1 max as @s[name="Etcuniversal1"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_firefei max as @s[name="Firefei"] run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute store result bossbar lifetime_crazy_crafter_12 max as @s[name="Crazy_Crafter_12"] run function lifetime:player/life_ticks_remaining

# Reset an active players death counter
scoreboard players reset @s[scores={ActivePlayer=1}] PlayerDied

## Final player setup
advancement revoke @s everything
experience set @s 0 levels
experience set @s 0 points

effect give @s regeneration 10 100
effect give @s saturation 10 100

give @s bread 10