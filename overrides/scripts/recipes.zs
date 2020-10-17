import crafttweaker.api.item.IIngredient;
import crafttweaker.api.BracketHandlers;

# Add a Furnace recipe using ore dictionary-ed stone
craftingTable.addShaped("furnace_from_stone", <item:minecraft:furnace>,[
  [<tag:forge:stone>, <tag:forge:stone>,    <tag:forge:stone>],
  [<tag:forge:stone>, <item:minecraft:air>, <tag:forge:stone>],
  [<tag:forge:stone>, <tag:forge:stone>,    <tag:forge:stone>]
]);

# Disable *all* Power Armors recipes
craftingTable.removeByModid("power_armors");

var tSeriesArmors = ["t_45_helmet", "t_45_chestplate", "t_45_leggings", "t_45_boots"];

#print(tSeriesArmors[0][2]);

for name in tSeriesArmors {
  val block = BracketHandlers.getItem("power_armors:" + name + "_block");
  val armor = BracketHandlers.getItem("power_armors:" + name).withTag({Damage: 0 as int});
  val steelPlate = <item:simplyjetpacks:armorplating_ie3>;
  
  # Testing Furnace "recycling" recipes. Don't know what the last two values actually do :(
  #furnace.addRecipe(name + "_recycle", <item:immersiveengineering:dust_steel>, block, 1600, 320);
  
  craftingTable.addShaped(name + "_new", armor, [
    [steelPlate, steelPlate, steelPlate],
    [steelPlate, block,      steelPlate],
    [steelPlate, steelPlate, steelPlate]
  ]);
}