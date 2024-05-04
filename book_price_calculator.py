import math
# This helps to easily calculate how books are priced
# The logic here should be mirrored in .mcfunction at the path data/libal/functions/interact/judge/calculate_price_book.mcfunction

book = [{"minecraft:fire_aspect":2},{"minecraft:mending":1}]

# Calculate the highest level
lvl = max(obj[next(iter(obj))] for obj in book)

# Calculate the number of objects
stack = len(book)

def cost(level):
    def special_book():
        x=0
        for obj in book:
            for key in obj.keys():
                if key in {"minecraft:frost_walker","minecraft:fire_aspect","minecraft:soul_speed", "minecraft:swift_sneak","minecraft:wind_burst"}:
                    #These are mostly sealed books
                    x=24
                if key in {"minecraft:flame", "minecraft:infinity", "minecraft:multishot"}:
                    #EQUIV Level 4
                    x=36
                if key in {"minecraft:channeling", "minecraft:aqua_affinity", "minecraft:silk_touch"}:
                    #EQUIV Level 5
                    x=48
                if key == "minecraft:mending":
                    x=52
        return x
    #This part done differently in mcfunction
    def correlating_price():
        if level<4:
            return level * 7
        else:
            return (level-1) * 12
    return max(correlating_price(), special_book())

#This part virtually identical in mcfunction
price = (cost(lvl))*stack
blocks = math.floor(price/9)
# ^^ round down, like how minecraft converts
if price > 64:
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
