#
# Limit a armor's enchantments held by a player
#
# Executor: A player with an overleveled piece of armor equipt

# Attempt to limit every possible enchantment from this held item
execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:bane_of_arthropods"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:bane_of_arthropods":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:bane_of_arthropods":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:breach"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:breach":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:breach":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:density"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:density":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:density":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:efficiency"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:efficiency":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:efficiency":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:fire_aspect"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_aspect":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_aspect":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:fortune"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:fortune":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:fortune":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:impaling"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:impaling":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:impaling":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:knockback"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:knockback":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:knockback":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:looting"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:looting":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:looting":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:loyalty"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:loyalty":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:loyalty":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:luck_of_the_sea"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:luck_of_the_sea":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:luck_of_the_sea":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:lunge"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:lunge":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:lunge":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:lure"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:lure":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:lure":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:piercing"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:piercing":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:piercing":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:power"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:power":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:power":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:punch"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:punch":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:punch":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:quick_charge"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:quick_charge":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:quick_charge":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:riptide"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:riptide":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:sharpness"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:sharpness":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:sharpness":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:smite"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:smite":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:smite":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:sweeping_edge"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:sweeping_edge":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:sweeping_edge":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:unbreaking"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":1},add:true}

execute store result score $temp temp run execute if items entity @s weapon *[enchantments~[{enchantments:"minecraft:wind_burst"}]]
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:wind_burst":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s weapon {function:"minecraft:set_enchantments",enchantments:{"minecraft:wind_burst":1},add:true}