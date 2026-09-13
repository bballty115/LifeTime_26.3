#
# Limit a armor's enchantments held by a player
#
# Executor: A player with an overleveled piece of armor equipt

# Helmet
execute store result score $temp temp run execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:blast_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:fire_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:projectile_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:respiration"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:respiration":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:respiration":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:thorns"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.head *[enchantments~[{enchantments:"minecraft:unbreaking"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.head {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":1},add:true}

# Chest
execute store result score $temp temp run execute if items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:blast_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:fire_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:projectile_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:thorns"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.chest *[enchantments~[{enchantments:"minecraft:unbreaking"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.chest {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":1},add:true}


# Legs
execute store result score $temp temp run execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:blast_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:fire_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:projectile_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:thorns"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:unbreaking"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.legs *[enchantments~[{enchantments:"minecraft:swift_sneak"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:swift_sneak":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.legs {function:"minecraft:set_enchantments",enchantments:{"minecraft:swift_sneak":1},add:true}


# Feet
execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:blast_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:blast_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:fire_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:projectile_protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:projectile_protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:protection"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:protection":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:thorns"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:thorns":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:depth_strider"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:depth_strider":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:depth_strider":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:feather_falling"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:feather_falling":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:feather_falling":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:frost_walker"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:frost_walker":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:frost_walker":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:soul_speed"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:soul_speed":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:soul_speed":1},add:true}

execute store result score $temp temp run execute if items entity @s armor.feet *[enchantments~[{enchantments:"minecraft:unbreaking"}]]
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":-255},add:true}
execute if score $temp temp matches 1 run item modify entity @s armor.feet {function:"minecraft:set_enchantments",enchantments:{"minecraft:unbreaking":1},add:true}