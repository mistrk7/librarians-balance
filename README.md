## The issue...

Ever found librarians in Minecraft to be a little too tedious and overpowered? There's no risk in rerolling their trades to get the one you need. And it's just too easy to obtain powerful enchantments that should reflect your dedication to the game.

I thought this part of Minecraft really needed a rebalance, so this is what I came up with.

# Introducing: Librarian's Balance

Librarian's Balance is a simple datapack that solves this issue by adding a few small things.

### Featuring...

1. **Customizable Trades:** Place an Enchanted Book on a Librarian's Lectern, and their first or second book trade will change to the one you entered. This gives new purpose to the books you collect in the world. Some books are [treasure](https://minecraft.wiki/w/Enchanting#Summary_of_enchantments) enchantments and these will produce untradable (sealed) variants when bought from a Librarian in this way.

2. **Limit Random Trades:** Default Librarian book trades are capped to a level of 3. To obtain a higher level trade, you combine two identical copies on an Anvil (ex. two Lvl 3's). This would create the upgraded copy (Lvl 4) that the Librarian needs to learn from again. It could also be taken from one found in your world. 

3. **Rare Mending:** Librarians do not trade for Mending so players will have to find it in the world. Mending is better found as loot in an End City or Ancient City. It roughly has the rarity of an armour trim. Once obtained, you can put it on a librarain's lectern to trade for more.

Everything listed here can be toggled or configured with the `/function libal:config` command (must be run as an OP). It's fully compatible with the Villager Rebalance experimental feature from Mojang. 

## Uses

On Survival Multiplayer servers. You may find enchantment progression too quick by some members of the server. Librarian's Balance provides a balanced progression system by use of experience points and requiring a proper level of exploration.

### Feedback:

Please give feedback on the [GitHub](https://github.com/mistrk7/librarians-balance/issues) page or on my [Discord](https://discord.gg/vruTPnV) server! I'm interested in hearing your ideas, opinions or suggestions from your time with this datapack. What do you think about the sealed books system? Do you think that the Mending pricing is appropriate? 

### Notes:

You might see the UI show a mending or >3 enchantment sometimes, but it's just a visual hitch and you should ignore it. This is my first datapack, so I'd appreciate any feedback or contributions.

I built this datapack upon parts of gibbsly's [Lectern Enchanting](https://www.planetminecraft.com/data-pack/lectern-enchanting/). I want to thank him for providing a starting point for this project, and for some of his tutorials on YouTube. Otherwise I would have had no idea on where to start making something like this :).

## Configuration

Run:
```
/function libal:config
```
Alternatively, edit `settings.mcfunction` in the folder `data > libal > functions` (datapack only). You can view and configure 'sealed books' from here.