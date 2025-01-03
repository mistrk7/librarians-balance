## Librarian's Balance

Librarian's Balance is a Minecraft datapack that integrates custom trading into vanilla, tweaks loot tables and the trading system to ultimately improve the progression of obtaining enchantments through villagers. 

## Visual overview of the core concept to balance Librarians

<p align="center">
    <img src="https://github.com/user-attachments/assets/65af2e7b-9860-45b1-858c-40bbbf6c2b34" alt="Trade cycle" width="500"/>
</p>

## Customisable Trades

Enchanted books are placeable on lecterns. Librarians adapt their enchanted book trade to what's on their lectern. The **emerald** price gets updated to match the estimated value of that book.
It is based on two parameters; the **best enchantment** & the **number of enchantments**. A simple breakdown of logic is below.  
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

'Treasure' enchantments aren't obtained through an enchantment table or trade rerolling. They're uniquely found in rare structures, and are exclusive to the players who get them.

These books will produce a 'sealed' variant of the same book when bought. 'Sealed' books can't be cloned through lectern trading and can only be used to apply on gear.

As a result, players who own legit 'treasure' enchantments control the distribution of copies that are purchased from them. Otherwise the speciality of enchantments like Wind Burst could get ruined as it could self-replicate into a commodity on a survival server!

Books that become 'sealed' are copies of treasure enchantments such as:

- Soul Speed  -  Unique to Piglin Bartering.
- Swift Sneak  -  Unique to Ancient Cities.
- Wind Burst  -  Unique to Trial Chambers.
- Curse of Binding & Vanishing  -  Unique to being cursed?
- Frost Walker  -  Unique to having a special effect on water.

This is how treasure enchantments remain valuable in a server economy. 

One notable exception is Mending. We had Mending at one point, but because of how core it is to game and how difficult the datapack makes obtaining it, it was decided against. 

## Tweaks to Villager Trades
Librarian's Balance makes tweaks to basic trading rules, helping to support the custom trade system.

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
