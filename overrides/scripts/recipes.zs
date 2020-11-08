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

# Materials used in Power Armors recipe changes
val steelPlate = <item:simplyjetpacks:armorplating_ie3>;
val steelIngot = <tag:forge:ingots/steel>;
val energySteel = <item:powah:steel_energized>;
val hopGraphite = <item:immersiveengineering:ingot_hop_graphite>;
val composite = <item:power_armors:composite>;

val tier1Battery = <item:powah:battery_basic>;
val tier2Battery = <item:powah:battery_hardened>;
val tier3Battery = <item:powah:battery_blazing>;
val tier4Battery = <item:powah:battery_niotic>;

# New composite recipe
craftingTable.addShaped("composite_new", composite, [
  [steelIngot,  energySteel, steelIngot],
  [energySteel, hopGraphite, energySteel],
  [steelIngot,  energySteel, steelIngot]
]);

var tSeriesArmors = ["t_45_helmet", "t_45_chestplate", "t_45_leggings", "t_45_boots"];

for name in tSeriesArmors {
  val block = BracketHandlers.getItem("power_armors:" + name + "_block");
  val armor = BracketHandlers.getItem("power_armors:" + name).withTag({Damage: 0 as int});
  
  # Add new armor recipes
  craftingTable.addShaped(name + "_new", armor, [
    [steelPlate, steelIngot,   steelPlate],
    [steelIngot, block,        steelIngot],
    [steelPlate, tier1Battery, steelPlate]
  ]);
  
  # Add new recycling recipes
  craftingTable.addShapeless(name + "_recycle", <item:immersiveengineering:nugget_steel> * 3, [block]);
}


var t51SeriesBlocks = ["t_51_helmetblock", "t_51_chestplateblock", "t_51_leg_block", "t_51_boots_blocks"];
var t51SeriesArmors = ["t_5_1_helmet", "t_5_1_chestplate", "t_5_1_leggings", "t_5_1_boots"];

for i in 0 .. 4 {
  
  val block = BracketHandlers.getItem("power_armors:" + t51SeriesBlocks[i]);
  val armor = BracketHandlers.getItem("power_armors:" + t51SeriesArmors[i]).withTag({Damage: 0 as int});
  
  craftingTable.addShaped(t51SeriesArmors[i] + "_new", armor, [
    [steelPlate, steelIngot,   steelPlate],
    [steelIngot, block,        steelIngot],
    [steelPlate, tier2Battery, steelPlate]
  ]);
  
  craftingTable.addShapeless(t51SeriesArmors[i] + "_recycle", <item:immersiveengineering:nugget_steel> * 3, [block]);
}


var x01SeriesBlocks = ["x_01_helmet_block", "x_01_chestplate_block", "x_01_leggings_block", "x_01_boots_block"];
var x01SeriesArmors = ["xo_1_helmet", "xo_1_chestplate", "xo_1_leggings", "xo_1_boots"];

for i in 0 .. 4 {
  val block = BracketHandlers.getItem("power_armors:" + x01SeriesBlocks[i]);
  val armor = BracketHandlers.getItem("power_armors:" + x01SeriesArmors[i]).withTag({Damage: 0 as int});
  
  craftingTable.addShaped(x01SeriesArmors[i] + "_new", armor, [
    [steelPlate, steelPlate,   steelPlate],
    [composite,  block,        composite],
    [steelPlate, tier3Battery, steelPlate]
  ]);
  
  craftingTable.addShapeless(x01SeriesArmors[i] + "_recycle", <item:immersiveengineering:nugget_steel> * 3, [block]);
}


var x02SeriesBlocks = ["x_02_helmet_block", "x_02_chestplate_block", "x_02_leggings_block", "x_02_boots_block"];
var x02SeriesArmors = ["xo_2_helmet", "xo_2_chestplate", "xo_2_leggings", "xo_2_boots"];

for i in 0 .. 4 {
  val block = BracketHandlers.getItem("power_armors:" + x02SeriesBlocks[i]);
  val armor = BracketHandlers.getItem("power_armors:" + x02SeriesArmors[i]).withTag({Damage: 0 as int});
  
  craftingTable.addShaped(x02SeriesArmors[i] + "_new", armor, [
    [steelPlate, composite,    steelPlate],
    [composite,  block,        composite],
    [steelPlate, tier4Battery, steelPlate]
  ]);
  
  craftingTable.addShapeless(x02SeriesArmors[i] + "_recycle", <item:immersiveengineering:nugget_steel> * 3, [block]);
}