image_dirname = path.dirname(__file__) .. "images/amazons/"

animations = {}
add_animation(animations, "frontier", image_dirname, "frontier", {9, 26})
add_animation(animations, "flag", image_dirname, "flag", {10, 39}, 10)

tribes:new_tribe {
   name = "amazons",
   animations = animations,

   -- Image file paths for this tribe's road textures
   roads = {
      busy = {
         image_dirname .. "roadt_busy.png",
      },
      normal = {
         image_dirname .. "roadt_normal_00.png",
         image_dirname .. "roadt_normal_01.png",
      },
   },

   resource_indicators = {
      [""] = {
         [0] = "amazons_resi_none",
      },
      coal = {
         [10] = "amazons_resi_coal_1",
         [20] = "amazons_resi_coal_2",
      },
      iron = {
         [10] = "amazons_resi_iron_1",
         [20] = "amazons_resi_iron_2",
      },
      gold = {
         [10] = "amazons_resi_gold_1",
         [20] = "amazons_resi_gold_2",
      },
      stones = {
         [10] = "amazons_resi_stones_1",
         [20] = "amazons_resi_stones_2",
      },
      water = {
         [100] = "amazons_resi_water",
      },
   },

   -- Wares positions in wares windows.
   -- This also gives us the information which wares the tribe uses.
   -- Each subtable is a column in the wares windows.
   wares_order = {
      {
         -- Building Materials
         "log",
         "granite",
         "balsa",
         "ironwood",
         "liana",
         "rope",
         "rubber",
      },
      {
         -- Food
          "water",
          "cassavaroot",
          "cocoa_beans",
          "bread_amazons",
          "chocolate",
          "fish",
          "meat",
          "ration",
      },
      {
         -- Mining
          "gold_dust",
          "gold",
      },
      {
         -- Tools
          "pick",
          "felling_ax",
          "shovel",
          "hammer",
          "machete",
          "spear_wooden",
          "chisel",
          "kitchen_tools",
          "needles",
          "stonebowl",
      },
      {
         -- Weapons & Armor
          "spear_stone_tipped",
          "spear_advanced",
          "armor_wooden",
          "helmet_wooden",
          "warriors_coat",
          "tunic",
          "vest_padded",
          "protector_padded",
          "boots_sturdy",
          "boots_swift",
          "boots_hero",
      }
   },

   -- Workers positions in workers windows.
   -- This also gives us the information which workers the tribe uses.
   -- Each subtable is a column in the workers windows.
   workers_order = {
      {
         -- Carriers
         "amazons_carrier",
         "amazons_tapir",
         "amazons_tapir_breeder"
      },
      {
         -- Building Materials
         "amazons_stonecutter",
         "amazons_woodcutter",
         "amazons_woodcutter_master",
         "amazons_jungle_preserver",
         "amazons_jungle_master",
         "amazons_liana_cutter",
         "amazons_builder",
         "amazons_dressmaker",
         "amazons_shipwright"
      },
      {
         -- Food
         "amazons_hunter_gatherer",
         "amazons_cassava_farmer",
         "amazons_cocoa_farmer",
         "amazons_cook",
         "amazons_wilderness_keeper",
      },
      {
         -- Mining
         "amazons_geologist",
         "amazons_charcoal_burner",
         "amazons_gold_smelter",
         "amazons_gold_digger",
         "amazons_stonecarver"
      },
      {
         -- Military
         "amazons_soldier",
         "amazons_trainer",
         "amazons_scout"
      }
   },

   immovables = {
      "ashes",
      "destroyed_building",
      "balsa_amazons_sapling",
      "balsa_amazons_pole",
      "balsa_amazons_mature",
      "balsa_amazons_old",
      "ironwood_amazons_sapling",
      "ironwood_amazons_pole",
      "ironwood_amazons_mature",
      "ironwood_amazons_old",
      "rubber_amazons_sapling",
      "rubber_amazons_pole",
      "rubber_amazons_mature",
      "rubber_amazons_old",
      "amazons_resi_none",
      "amazons_resi_water",
      "amazons_resi_coal_1",
      "amazons_resi_iron_1",
      "amazons_resi_gold_1",
      "amazons_resi_stones_1",
      "amazons_resi_coal_2",
      "amazons_resi_iron_2",
      "amazons_resi_gold_2",
      "amazons_resi_stones_2",
      "amazons_shipconstruction",
   },

   -- The order here also determines the order in lists on screen.
   buildings = {
      -- Warehouses
      "amazons_headquarters",
      "amazons_warehouse",
      "amazons_port",

      -- Small
      "amazons_stonecutters_hut",
      "amazons_woodcutters_hut",
      "amazons_junglemasters_hut",
      "amazons_hunter_gatherers_hut",
      "amazons_liana_cutters_hut",
      "amazons_water_gatherers_hut",
      "amazons_rare_trees_woodcutters_hut",
      "amazons_wilderness_keepers_tent",
      "amazons_scouts_hut",

      -- Medium
      "amazons_rope_weaver_booth",
      "amazons_furnace",
      "amazons_rare_tree_plantation",
      "amazons_stonecarvery",
      "amazons_dressmaker",
      "amazons_charcoal_kiln",
      "amazons_cassava_root_cooker",
      "amazons_chocolate_brewery",
      "amazons_food_preserver",
      "amazons_youth_gathering",
      "amazons_gardening_center",
      "amazons_shipyard",

      -- Big
      "amazons_tapir_farm",
      "amazons_cassava_root_plantation",
      "amazons_cocoa_farm",

      -- Mines
      "amazons_stonemine",
      "amazons_gold_digger_dwelling",

      -- Training Sites
      "amazons_warriors_gathering",
      "amazons_training_glade",

      -- Military Sites
      "amazons_patrol_post",
      "amazons_treetop_sentry",
      "amazons_warriors_dwelling",
      "amazons_tower",
      "amazons_observation_tower",
      "amazons_fortress",
      "amazons_fortification",

      -- Partially Finished Buildings - these are the same 2 buildings for all tribes
      "constructionsite",
      "dismantlesite",
   },

   ship_names = {
      "Orinoco",
      "Amazonas",
      "Abacaxis",
      "Anchicaya",
      "Guaitara",
      "Iscuande",
      "Putumayo",
   },

   -- Special types
   builder = "amazons_builder",
   carrier = "amazons_carrier",
   carrier2 = "amazons_tapir",
   geologist = "amazons_geologist",
   soldier = "amazons_soldier",
   ship = "amazons_ship",
   port = "amazons_port",
   ironore = "ironwood",
   rawlog = "log",
   refinedlog = "rope",
   granite = "granite",
}
