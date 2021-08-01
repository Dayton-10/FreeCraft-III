import crafttweaker.api.item.IIngredient;
import crafttweaker.api.BracketHandlers;

# Add a Furnace recipe using ore dictionary-ed stone
craftingTable.addShaped("furnace_from_stone", <item:minecraft:furnace>,[
  [<tag:forge:stone>, <tag:forge:stone>,    <tag:forge:stone>],
  [<tag:forge:stone>, <item:minecraft:air>, <tag:forge:stone>],
  [<tag:forge:stone>, <tag:forge:stone>,    <tag:forge:stone>]
]);