## Librarian's Balance

Librarian's Balance is a Minecraft datapack that integrates custom trading into vanilla, applies a couple of tweaks to loot tables, and runs functions that tweak the trading system. This description will describe most of the features in this datapack in some detail.

## Visual overview of the core concept to balance Librarians

<p align="center">
    <img src="https://github.com/user-attachments/assets/65af2e7b-9860-45b1-858c-40bbbf6c2b34" alt="Trade cycle" width="500"/>
</p>

## Customisable Trades

Enchanted books are placeable on lecterns. Librarians adapt their enchanted book trade to what's on their lectern. The **emerald** price gets updated based on two parameters from that book; the **best enchantment** & the **number of enchantments**. A simple explanation is below. The logic was written in Python before I ported it over to mcfunction. 
<h6>(spoilers, maybe??)</h6>

### Price of enchantment = price(best enchantment) * number of enchantments </h3>

- The '**number of enchantments**' is a count of vanilla enchantments on the book.
- The '**best enchantment**' is the price of the highest level enchantment on a book (below)
  ##### Level 1 = 7 Emeralds  |  Level 2 = 14 Emeralds  |  Level 3 = 21 Emeralds  |  Level 4 = 36 Emeralds  |  Level 5 = 48 Emeralds
- If there's one of the following special enchantments, that price is overwritten into the 'best enchantment' value.
  <h5> frost_walker, fire_aspect, soul_speed, swift_sneak, wind_burst... = 24 EMERALDS </h5>
  <h5> flame, infinity, multishot... = 36 EMERALDS </h5>
  <h5> channeling, aqua_affinity, silk_touch... = 48 EMERALDS </h5>
  <h5> mending... = 52 EMERALDS </h5>
- If it's above 64, then it gets divided by 9 rounded to the lowest denominator, and converted into Emerald Blocks. Discounts get removed.
- If a price can't be placed the book is invalidated and classed as 'too complex'

## Treasure Enchantments & Sealed Books

With custom trades the uniqueness of enchantments could get lost because anybody could take a copy from their friend and produce as many more as they want. The '**sealed**' books system prevents this by nerfing duplicated books, making them unable to be placed on lecterns, so their exclusive purpose is to apply on gear. 

**Sealed books** are designed to keep enchantments valuable throughout a server economy. If a master enchantment book produces sealed variants, it's up to the player how they want to distribute it.

Enchanted books that get sealed fit the description of 'treasure enchantments', which in Minecraft are what you can't get through villagers, not obtainable on an enchantment table, but that you can find as loot in the world. The definition has changed a little bit now but that doesn't matter because to me these are books that are uniquely obtained and exclusive to the players who get them.

Books that are affected by the 'sealed' books system once traded are the following:

- Soul Speed  -  Unique to Piglin Bartering
- Swift Sneak  -  Unique to Ancient Cities
- Wind Burst  -  Unique to Trial Chambers
- Curse of Binding & Vanishing  -  Unique to trolls?
- Frost Walker  -  Was a treasure enchantment at one point

One notable exception is Mending. We had Mending as a sealed variant at one point, but because of how necessary it is to the core game and how difficult the datapack makes obtaining it (will talk about this later), it was voted against. 

## Tweaks to Villager Trades
Librarian's Balance makes tweaks to trading to better support the custom trade system and the progression of obtaining enchantments through villagers.  

- Default Librarian enchanted book trades can only be random up to level 3. Normally this goes up to level 5 which meant you could get the best enchantment books by doing nothing. This change works in conjunction with custom trades so that you have to use enchantment points to combine lower level books in an anvil with librarians on lecterns to work your way up to higher level enchantments, or explore to find one as loot in the world
 
- **Mending** cannot be obtained through villagers anymore. It is exclusive to two specific locations in the game being **Ancient Cities** and **End Cities**. This makes it uniquely obtained and exclusive to the players who get them (a treasure enchantment), and is how I imagine Mending would be implemented in the modern day just like Swift Sneak, Soul Speed or Wind Burst.      

The function that runs these filters happens on every villager every time one is right clicked.  

## Configuration
Run:
```
/function libal:config
```
![image](https://github.com/user-attachments/assets/42d7e286-8357-4f3c-a824-5f21b6b47c41)

Alternatively, edit `settings.mcfunction` in the folder `data > libal > functions` (datapack only). You can view and configure 'sealed books' from here.

## Links

### [Modrinth](https://modrinth.com/datapack/librarians-balance)
### [Discord server](https://discord.gg/vruTPnV)
