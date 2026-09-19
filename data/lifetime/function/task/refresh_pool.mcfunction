##
## Refresh the task pool. Update tasks by ID. Add new tasks to the pool.
##

# Reset task pool with "Error" and "No Task"
data modify storage lifetime:data tasks.all set value {}
data modify storage lifetime:data tasks.all.error set value {name: "TASK ERROR", description: "Error with task selection. Please have a moderator check the current task information!"}
data modify storage lifetime:data tasks.all.0 set value {name: "NO TASK SELECTED", description: "No current task selected or announced!"}

# Populate the all tasks dataset
#!c data modify storage lifetime:data tasks.all.TASKID set value {name: "TASKTITLE", description: "TASKDESCRIPTION"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.1 set value {name: "GO TO SPACE", description: "Reach Y-level 250"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.2 set value {name: "RAIL SOMEONE", description: "Get a kill with a TNT Minecart"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.3 set value {name: "GROUP VOTE", description: "Everyone report to spawn and decide as a group the winner of the task. Must be unanimous."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.4 set value {name: "BUILDING COMPETITION", description: "Everyone has 30 minutes to build the nicest build near the spawn area which will be decided through a vote."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.5 set value {name: "SPOOKY", description: "Jumpscare a player on the server"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.6 set value {name: "ARMORLESS", description: "No wearing armor or shields until you die. If you do, you fail. Last one standing Wins. If the session ends with multiple survivors, person with least time left wins. If that's a tie, no one wins."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.7 set value {name: "WATER BUCKET GAMBLE", description: "Thirty minutes to pull off a water bucket clutch. Person with the second highest clutch wins. Dying eliminates you from winning. If only one person succeeds they win."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.8 set value {name: "WOLF PACK", description: "Befriend 5 new wolves"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.9 set value {name: "RANDOM BLOCK COLLECTOR", description: "Have your entire inventory, minus your hotbar, filled with a full stack of different blocks."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.10 set value {name: "COMEDY", description: "Make 3 people laugh"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.11 set value {name: "GONE FISHIN’", description: "You must fish up 5 enchantment books. If you get a mending book you instantly win."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.12 set value {name: "IT'S A TRAP", description: "Get a trap kill on another player"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.13 set value {name: "PORKY PILGRIMAGE", description: "Ride a pig into spawn"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.14 set value {name: "LEVEL BEYOND", description: "Reach level 20. If the session ends, whoever has the highest level wins."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.15 set value {name: "DEFEAT THE DRAGON", description: "End Portal will be added into spawn in creative mode and be opened. Whoever gets the final blow on the dragon wins."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.16 set value {name: "POTION BREWER", description: "Brew 5 different potions with different effects (i.e. no just making the same potion with differing lasting times/splash potions)"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.17 set value {name: "WARDEN HOARDIN", description: "Spawn in and bring a warden to the surface on your own"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.18 set value {name: "BLAZING 8S", description: "Tyler’s nightmare. Win 5 games first lmao."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.19 set value {name: "TAG", description: "Someone is randomized as it. They must punch someone to make them it. Whoever is it after 5 minutes loses. No punch backs allowed. Then someone new is randomized as it. Last person standing wins."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.20 set value {name: "PIT JR.", description: "Create a 3x3 pit leading straight from above ground to bedrock to honor the pit."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.21 set value {name: "SURPASS THE ROOF", description: "Be the first to reach the nether roof. If someone has already been there then reroll the task."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.22 set value {name: "PRETTY LITTLE LIARS", description: "Speak and act only in lies. If you tell the truth you fail. Last one standing wins."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.23 set value {name: "MURDER!!!", description: "Get 2 player kills on different people!"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.24 set value {name: "TARGET LIFE MINI", description: "Someone random will be decided as target at the start of this task. Anyone can kill them. Whoever kills them becomes the new target. After an hour or at the end of the session whoever is it wins. The target must be above ground in the overworld AT ALL TIMES! Failure to do so is an automatic fail and reroll of who is it."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.25 set value {name: "AMERICAN SNIPER", description: "Get a kill with a bow, crossbow, trident, or any other ranged means of attack."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.26 set value {name: "WITHER OR NOT", description: "Get a fresh new wither skull from a wither skeleton first"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.27 set value {name: "JOEY CHESTNUT", description: "Eat 15 different edible minecraft items."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.28 set value {name: "MAKE LOVE NOT WAR", description: "Breed 5 different animals"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.29 set value {name: "RANDOM 1V1ING", description: "Win against 3 different people in a 1 v 1 challenge you both agree on. First person to win 3 wins it all. If there are not at least 4 people left then reroll."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.30 set value {name: "FLY FLY AWAY", description: "Build a flying machine to go from one side of the map to the other."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.31 set value {name: "CLEAN HANDS", description: "No killing any players or mobs. If you kill any or die you fail this task."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.32 set value {name: "LYRICAL LINGUIST", description: "Choose a popular song. Sneak in 3 different lyrics from the song in conversations with 3 different people. If you get called out on the song you fail."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.33 set value {name: "BUILDING CONNECTIONS", description: "Once you have a base, connect your base to spawn and connect it to a base of one other player. You cannot connect it to a player you share a base with."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.34 set value {name: "ACHIEVEMENT HUNTER", description: "Get 5 new achievements complete."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.35 set value {name: "DREAM LUCK", description: "Get a stack of ender pearls through Piglin Trades or killing endermen."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.36 set value {name: "FLOWER POWER", description: "Collect 9 different flowers and gift them into someone’s inventory"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.37 set value {name: "UNCONTROLLABLE", description: "Make your W your left key, D your forward key, S your right key, and A your back key. Keep those controls as long as you can. If you die with these controls you lose."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.38 set value {name: "KILLER OF THE NIGHT", description: "Kill 50 aggressive mobs first"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.39 set value {name: "ON THE VERGE", description: "Find a way to get yourself to ½ a heart in just one instance of damage (i.e. one tick of damage so suffocating and drowning would not count)"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.40 set value {name: "HOLD YOUR BREATH", description: "All players must meet at a body of water. Everyone will go underwater at the same time. Last one to go above water wins. If you die underwater you lose."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.41 set value {name: "A HORSE’S JOURNEY", description: "Bring a horse from the overworld to a nether fortress and a bastion"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.42 set value {name: "GOING FOR GOLD", description: "Get a full set of gold armor and tools and put them on an armor stand and in item frames."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.43 set value {name: "I SEE YOU", description: "Get a spyglass and look at every alive player through it"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.44 set value {name: "NEW STRIDES", description: "Bring a strider to the overworld"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.45 set value {name: "MUSIC MAN", description: "Get a brand new disc (ones you already have do not count) and play it in a jukebox for two other players."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.46 set value {name: "BUCKETS O’ PLENTY", description: "Have 4 buckets each filled with a unique item. (Empty buckets do not count)"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.47 set value {name: "MAPPED OUT", description: "Get a map of the entire world within the border and display it at your base"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.48 set value {name: "STATISTICS BET", description: "If this is the first session reroll and save for a future session. Everyone come to spawn and stand in a circle. A random player will be chosen and get to say a statistic of their choice (any death stat is not allowed). Whoever has the lowest of that fails the challenge. We then continue clockwise to the next player who chooses a new stat. Continue until one player remains. If there is a tie for last place, the player who made the stat choice chooses a new comparison for those in a tie."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.49 set value {name: "BANGER", description: "Create fireworks and shoot them out of a crossbow to kill another player."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.50 set value {name: "UNBEELIEVABLE", description: "Find a bee and nametag it Dinnerbone to see it flip upside down. Then do the same to two other mobs of your choice."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.51 set value {name: "A SMASHING ACT", description: "go to https://smashurandompicker.web.app/ and get a random smash character. Everyone must then meet at spawn. Everyone will take turns acting as their character and based on player vote whoever gets the best performance wins.  You are allowed one reroll of character but must commit to reroll."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.52 set value {name: "GATHER THE ANCIENTS", description: "Find 2 pieces of ancient debris in the nether (you do not need to mine them)"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.53 set value {name: "GHASTLY BOATS", description: "Get a ghast to get into a boat. (Yes it is possible unless the internet lied to me)"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.54 set value {name: "DECONTAMINATION", description: "Find a zombie villager and convert it back to a normal villager."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.55 set value {name: "RAINBOW ENJOYER", description: "Build an accurate rainbow (aka doesn’t look like shit)."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.56 set value {name: "CAREFUL SPEAKING", description: "You can no longer say the direct name of any minecraft item/block/mob/biome. If you say any, you fail the challenge. No being silent either, if someone talks to you, you must talk back."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.57 set value {name: "FOUR CORNERS RACE", description: "Everyone gets 10 minutes to prepare and then meet at spawn. Whoever runs to each corner of the map first wins!"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.58 set value {name: "MINE DIIIIIIIIIIIIAMONDS", description: "Find and mine 8 diamond ore"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.59 set value {name: "LOONEY TUNES MOMENT", description: "Drop an anvil on top of someone’s head to kill them"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.60 set value {name: "TOXIC GAMER", description: "Poison 3 different players through any means."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.61 set value {name: "DRIPPED OUT", description: "Wear a full set of trimmed armor"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.62 set value {name: "MUST HAVE BEEN THE WIND", description: "Knock someone off at least a 5 block high fall with a wind charge"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.63 set value {name: "TRIALS AND TRIBULATIONS", description: "Complete 2 trials in a trial chamber in a row without dying"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.64 set value {name: "SAY IT BACK", description: "Choose a phrase, get 3 people to say it without directly telling them too."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.65 set value {name: "LOW TIER GOD", description: "You should kill yourself now. First one wins."}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.66 set value {name: "THE WORST CRIME", description: "Kill a frog"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.67 set value {name: "YOU DECIDE", description: "One person at random is chosen, they choose the next task from the current list"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.68 set value {name: "HEAVY ODDS", description: "Get a heavy core from trial chambers"}
# [Generated From Compiler]
data modify storage lifetime:data tasks.all.69 set value {name: "APOCALYPSE NOW", description: "Someone will be randomly chosen as the first infected. Whoever is infected will now be similar to a red life. Spread the infection to others by killing them. Longest to survive the apocalypse wins. To avoid camping hell, all non-infected must stay above ground and in overworld at all times."}

# For all tasks in the dataset, if task is not archived, add to pool
data modify storage lifetime:data tasks.pool set value []
execute unless data storage lifetime:data tasks.archived run data modify storage lifetime:data tasks.archived set value []
#!c execute unless data storage lifetime:data tasks.archived[{id:TASKID}] run data modify storage lifetime:data tasks.pool append value {id:TASKID}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:1}] run data modify storage lifetime:data tasks.pool append value {id:1}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:2}] run data modify storage lifetime:data tasks.pool append value {id:2}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:3}] run data modify storage lifetime:data tasks.pool append value {id:3}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:4}] run data modify storage lifetime:data tasks.pool append value {id:4}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:5}] run data modify storage lifetime:data tasks.pool append value {id:5}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:6}] run data modify storage lifetime:data tasks.pool append value {id:6}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:7}] run data modify storage lifetime:data tasks.pool append value {id:7}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:8}] run data modify storage lifetime:data tasks.pool append value {id:8}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:9}] run data modify storage lifetime:data tasks.pool append value {id:9}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:10}] run data modify storage lifetime:data tasks.pool append value {id:10}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:11}] run data modify storage lifetime:data tasks.pool append value {id:11}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:12}] run data modify storage lifetime:data tasks.pool append value {id:12}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:13}] run data modify storage lifetime:data tasks.pool append value {id:13}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:14}] run data modify storage lifetime:data tasks.pool append value {id:14}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:15}] run data modify storage lifetime:data tasks.pool append value {id:15}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:16}] run data modify storage lifetime:data tasks.pool append value {id:16}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:17}] run data modify storage lifetime:data tasks.pool append value {id:17}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:18}] run data modify storage lifetime:data tasks.pool append value {id:18}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:19}] run data modify storage lifetime:data tasks.pool append value {id:19}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:20}] run data modify storage lifetime:data tasks.pool append value {id:20}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:21}] run data modify storage lifetime:data tasks.pool append value {id:21}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:22}] run data modify storage lifetime:data tasks.pool append value {id:22}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:23}] run data modify storage lifetime:data tasks.pool append value {id:23}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:24}] run data modify storage lifetime:data tasks.pool append value {id:24}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:25}] run data modify storage lifetime:data tasks.pool append value {id:25}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:26}] run data modify storage lifetime:data tasks.pool append value {id:26}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:27}] run data modify storage lifetime:data tasks.pool append value {id:27}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:28}] run data modify storage lifetime:data tasks.pool append value {id:28}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:29}] run data modify storage lifetime:data tasks.pool append value {id:29}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:30}] run data modify storage lifetime:data tasks.pool append value {id:30}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:31}] run data modify storage lifetime:data tasks.pool append value {id:31}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:32}] run data modify storage lifetime:data tasks.pool append value {id:32}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:33}] run data modify storage lifetime:data tasks.pool append value {id:33}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:34}] run data modify storage lifetime:data tasks.pool append value {id:34}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:35}] run data modify storage lifetime:data tasks.pool append value {id:35}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:36}] run data modify storage lifetime:data tasks.pool append value {id:36}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:37}] run data modify storage lifetime:data tasks.pool append value {id:37}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:38}] run data modify storage lifetime:data tasks.pool append value {id:38}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:39}] run data modify storage lifetime:data tasks.pool append value {id:39}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:40}] run data modify storage lifetime:data tasks.pool append value {id:40}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:41}] run data modify storage lifetime:data tasks.pool append value {id:41}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:42}] run data modify storage lifetime:data tasks.pool append value {id:42}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:43}] run data modify storage lifetime:data tasks.pool append value {id:43}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:44}] run data modify storage lifetime:data tasks.pool append value {id:44}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:45}] run data modify storage lifetime:data tasks.pool append value {id:45}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:46}] run data modify storage lifetime:data tasks.pool append value {id:46}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:47}] run data modify storage lifetime:data tasks.pool append value {id:47}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:48}] run data modify storage lifetime:data tasks.pool append value {id:48}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:49}] run data modify storage lifetime:data tasks.pool append value {id:49}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:50}] run data modify storage lifetime:data tasks.pool append value {id:50}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:51}] run data modify storage lifetime:data tasks.pool append value {id:51}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:52}] run data modify storage lifetime:data tasks.pool append value {id:52}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:53}] run data modify storage lifetime:data tasks.pool append value {id:53}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:54}] run data modify storage lifetime:data tasks.pool append value {id:54}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:55}] run data modify storage lifetime:data tasks.pool append value {id:55}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:56}] run data modify storage lifetime:data tasks.pool append value {id:56}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:57}] run data modify storage lifetime:data tasks.pool append value {id:57}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:58}] run data modify storage lifetime:data tasks.pool append value {id:58}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:59}] run data modify storage lifetime:data tasks.pool append value {id:59}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:60}] run data modify storage lifetime:data tasks.pool append value {id:60}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:61}] run data modify storage lifetime:data tasks.pool append value {id:61}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:62}] run data modify storage lifetime:data tasks.pool append value {id:62}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:63}] run data modify storage lifetime:data tasks.pool append value {id:63}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:64}] run data modify storage lifetime:data tasks.pool append value {id:64}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:65}] run data modify storage lifetime:data tasks.pool append value {id:65}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:66}] run data modify storage lifetime:data tasks.pool append value {id:66}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:67}] run data modify storage lifetime:data tasks.pool append value {id:67}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:68}] run data modify storage lifetime:data tasks.pool append value {id:68}
# [Generated From Compiler]
execute unless data storage lifetime:data tasks.archived[{id:69}] run data modify storage lifetime:data tasks.pool append value {id:69}

# Ensure that any archived tasks are ones that exist in the task pool
# Ex: A task was removed, but it was previously archived. We now have an archived task with no matching id, which is bad
function lifetime:task/refresh_archived