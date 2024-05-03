
# This helps visualise how I plan to implement the new book pricing
#while True:
book = [{"minecraft:efficiency":4},{"minecraft:unbreaking":3}]

# Calculate the highest level
lvl = max(obj[next(iter(obj))] for obj in book)

# Calculate the number of objects
stack = len(book)

def cost(level):
    for obj in book:
        for key in obj.keys():
            if key == "minecraft:mending":
                return 52
            if key in {"minecraft:channeling", "minecraft:aqua_affinity", "minecraft:silk_touch"}:
                #EQUIV Level 5
                return 48
            if key in {"minecraft:flame", "minecraft:infinity", "minecraft:multishot"}:
                #EQUIV Level 4
                return 38
            if key in {"minecraft:frost_walker","minecraft:fire_aspect","minecraft:soul_speed", "minecraft:swift_sneak",,"minecraft:wind_burst"}:
                #These are mostly sealed books
                #EQUIV Level 3
                #Omitted: Breach & density because they are scalable
                return 24
    if level<4:
        return level * 7
    else:
        return level * 10 - 2

price = (cost(lvl))*stack
blocks = round(price/9)
if price > 63:
    price_ = blocks
    block_type = "minecraft:emerald_block"
    #just to know what to do when implementing this

# Print the results
print("")
print("Book:", book)
print("")
print("max lvl",lvl)
print("stack",stack)
print("")
print("lvl 1 enchant", cost(1))
print("lvl 2 enchant", cost(2))
print("lvl 3 enchant", cost(3))
print("lvl 4 enchant", cost(4))
print("lvl 5 enchant", cost(5))
print("")
print("Emerald price:", price)
print("Blocks:", blocks)
print("")
#print("Remainder:", remainder)
