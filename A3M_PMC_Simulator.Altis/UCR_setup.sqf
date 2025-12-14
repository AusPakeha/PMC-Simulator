/*

Setup options for INC_undercover undercover / civilian recruitment script by Incontinentia.

Please check each setting carefully otherwise the script may not function properly in your scenario. All classnames must have quotation marks ("Item_Random_F")

*/

//-------------------------Player settings-------------------------

_undercoverUnitSide = west;             //What side is/are the undercover unit(s) on? (Can be east, west or independent - only one side supported)

//-------------------------General Settings-------------------------

_debug = false;                         //Set to true for debug
_fullAIfunctionality = true;            //Enable all checks on AI (may degrade performace very slightly for large groups, 15+)
_easyMode = true;                       //Disguise checks will also reveal if the player's disguise is working or not

_racism = false;                         //Enemies will notice if you aren't the race of the faction you're pretending to be (making you easier to detect if nothing is covering your face)
_racProfFacCiv = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural civilian population
_racProfFacEny = 1;                     //(Number) Multiplies the effect of racial profiling. Lower this number to simulate more multicultural enemy forces

_regEnySide = east;                     //Units of this side will be classed as regular enemies and will share information about detected units across entire map (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_regBarbaric = true;                   //(Bool - true or false) Will this side lash out on civilians if it takes casualties and doesn't know the attacker?
_regDetectRadius = 10;                  //Default detection radius for regular troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_asymEnySide = sideEmpty;               //Units of this side will be classed as asymetric enemies (Side: can be east, west, independent) - if you don't need this, use sideEmpty.
_asymBarbaric = false;                   //(Bool - true or false) Will this side have a small chance of lashing out on civilians if it takes casualties and doesn't know the attacker?
_asymDetectRadius = 15;                 //Default detection radius for asym troops (this will expand and contract based on weather, time of day, and how the undercover unit is acting - civilians within this radius will be under much more scrutinty)

_globalSuspicionModifier = 1;           //Scales the level of suspicion of enemies. 1 is default, 2 means units are twice as likely to see through undercover unit's disguises, 0.5 means half as likely etc.

//-------------------------Civilian Disguise settings-------------------------

_civFactions = ["CIV_F","CIV_IDAP_F"]; //Array of factions whose vests are safe for undercover units to wear

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianVests = [
"V_Press_F", // Vest (Press)
"V_BandolierB_blk", // Slash Bandollier (Black)
"V_BandolierB_cbr", // Slash Bandollier (Coyote)
"V_BandolierB_ghex_F", // Slash Bandollier (Green Hex)
"V_BandolierB_rgr", // Slash Bandollier (Green)
"V_BandolierB_khk", // Slash Bandollier (Khaki)
"V_BandolierB_oli", // Slash Bandollier (Olive)
"V_LegStrapBag_black_F", // Leg Strap Bag (Black)
"V_LegStrapBag_coyote_F", // Leg Strap Bag (Coyote)
"V_LegStrapBag_olive_F", // Leg Strap Bag (Olive)
"V_Plain_crystal_F", // Identification Vest (Red Crystal)
"V_Plain_medical_F", // Identification Vest (IDAP)
"V_Safety_blue_F", // Saftey Vest (Blue)
"V_Safety_orange_F", // Saftey Vest (Orange)
"V_Safety_yellow_F", // Saftey Vest (Yellow)
"V_DeckCrew_blue_F", // Deck Crew Vest (Blue)
"V_DeckCrew_brown_F", // Deck Crew Vest (Brown)
"V_DeckCrew_green_F", // Deck Crew Vest (Green)
"V_DeckCrew_red_F", // Deck Crew Vest (Red)
"V_DeckCrew_violet_F", // Deck Crew Vest (Violet)
"V_DeckCrew_white_F", // Deck Crew Vest (White)
"V_DeckCrew_yellow_F" // Deck Crew Vest (Yellow)
];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianUniforms = [
"U_C_IDAP_MAN_cargo_F", // Aid Worker Clothes (Cargo) [IDAP]
"U_C_IDAP_MAN_Jeans_F", // Aid Worker Clothes (Jeans) [IDAP]
"U_C_IDAP_MAN_casual_F", // Aid Worker Clothes (Polo) [IDAP]
"U_C_IDAP_MAN_shorts_F", // Aid Worker Clothes (Polo, Shorts) [IDAP]
"U_C_IDAP_MAN_Tee_F", // Aid Worker Clothes (Tee) [IDAP]
"U_C_IDAP_MAN_TeeShorts_F", // Aid Worker Clothes (Tee, Shorts) [IDAP]
"U_I_C_Bandit_1_F", // Bandits Clothes (Polo Shirt)
"U_I_C_Bandit_2_F", // Bandits Clothes (Skull)
"U_I_C_Bandit_3_F", // Bandits Clothes (Tee)
"U_I_C_Bandit_4_F", // Bandits Clothes (Checkered)
"U_I_C_Bandit_5_F", // Bandits Clothes (Tank Top)
"U_C_ArtTShirt_01_v6_F", // Casual Clothes (Abstract)
"U_C_ArtTShirt_01_v1_F", // Casual Clothes (Art Of War)
"U_C_ArtTShirt_01_v2_F", // Casual Clothes (Drones)
"U_C_ArtTShirt_01_v3_F", // Casual Clothes (Waltham Robotics)
"U_C_ArtTShirt_01_v4_F", // Casual Clothes (Exhibition)
"U_C_ArtTShirt_01_v5_F", // Casual Clothes (Robogeddon)
"U_C_ArtTShirt_01_isntArt", // Casual Clothes (Isn't Art)
"U_C_Man_casual_1_F", // Casual Clothes (Navy)
"U_C_Man_casual_2_F", // Casual Clothes (Blue)
"U_C_Man_casual_3_F", // Casual Clothes (Green)
"U_C_Poloshirt_blue", // (Blue)
"U_C_Poloshirt_burgundy", // (Burgundy)
"U_C_Poloshirt_redwhite", // (Red-White)
"U_C_Poloshirt_salmon", // (Salmon)
"U_C_Poloshirt_stripped", // (Striped)
"U_C_Poloshirt_tricolor", // (Tricolor)
"U_Competitor", // (Competitor Suit)
"U_Uniform_Farmer_01_F", // Farmer Outfit
"U_C_HunterBody_grn", // Hunting Clothes
"U_OrestesBody", // Jacket and Shorts
"U_C_Journalist", // Journalist Clothes
"U_Marshal", // Marshal Clothes
"U_Rangemaster", // Rangemaster Clothes
"U_C_Mechanic_01_F", // Mechanic Clothes
"U_C_Paramedic_01_F", // Paramedic Clothes
"U_C_WorkerCoveralls", // Worker Coveralls
"U_C_Poor_1", // Worn Clothes
"U_C_Poor_2", // Worn Clothes
"U_C_Scientist", // Scientist Clothes
"U_C_Uniform_Scientist_01_formal_F", // Scientist Outfit (Formal, Blue)
"U_C_Uniform_Scientist_01_F", // Scientist Outfit (Formal, White)
"U_C_Uniform_Scientist_02_formal_F", // Scientist Outfit (Informal, Red)
"U_C_Uniform_Scientist_02_F", // Scientist Outfit (Informal, Black)
"U_C_ConstructionCoverall_Black_F", // Construction Coverall (Black)
"U_C_ConstructionCoverall_Blue_F", // Construction Coverall (Blue)
"U_C_ConstructionCoverall_Red_F", // Construction Coverall (Red)
"U_C_ConstructionCoverall_Vrana_F", // Construction Coverall (Vrana)
"U_C_FormalSuit_01_black_F", // Formal Suit (Black)
"U_C_FormalSuit_01_blue_F", // Formal Suit (Blue)
"U_C_FormalSuit_01_grey_F", // Formal Suit (Grey)
"U_C_FormalSuit_01_khaki_F", // Formal Suit (Khaki)
"U_C_FormalSuit_01_tshirt_black_F", // Formal Suit (Black)
"U_C_FormalSuit_01_tshirt_grey_F", // Formal Suit (Grey)
"U_C_E_LooterJacket_01_F", // Looter Clothes (Leather Jacket)
"U_I_L_Uniform_01_tshirt_black_F", // Looter Clothes (T-shirt, Black)
"U_I_L_Uniform_01_tshirt_olive_F", // Looter Clothes (T-shirt, Olive)
"U_I_L_Uniform_01_tshirt_skull_F", // Looter Clothes (T-shirt, Skull)
"U_I_L_Uniform_01_tshirt_sport_F", // Looter Clothes (T-shirt, Sport)
"U_C_man_sport_1_F", // Sport Clothes (Beach)
"U_C_man_sport_2_F", // Sport Clothes (Orange)
"U_C_man_sport_3_F", // Sport Clothes (Blue)
"U_C_man_sport_4_F", // Sport Clothes (Sky)
"U_C_man_sport_5_F", // Sport Clothes (Yellow)
"U_C_man_sport_6_F" // Sport Clothes (Red)

];

//(Array of classnames) Safe headgear (will automatically include civilian headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianHeadgear = [
"H_Bandanna_gry", // Bandana (Black)
"H_Bandanna_blu", // Bandana (Blue)
"H_Bandanna_cbr", // Bandana (Coyote)
"H_Bandanna_khk_hs", // Bandana (Headset)
"H_Bandanna_khk", // Bandana (Khaki)
"H_Bandanna_mcamo", // Bandana (MTP)
"H_Bandanna_sgg", // Bandana (Sage)
"H_Bandanna_sand", // Bandana (Sand)
"H_Bandanna_surfer", // Bandana (Surfer)
"H_Bandanna_surfer_blk", // Bandana (Surfer, Black)
"H_Bandanna_surfer_grn", // Bandana (Surfer, Green)
"H_Bandanna_camo", // Bandana (Woodland)
"H_Watchcap_blk", // Beanie
"H_Watchcap_cbr", // Beanie (Coyote)
"H_Watchcap_camo", // Beanie (Green)
"H_Watchcap_khk", // Beanie (Khaki)
"H_Watchcap_sgg", // Beanie (Sage)
"H_Booniehat_mgrn", // Booniehat (Green)
"H_Booniehat_khk_hs", // Booniehat (Headset)
"H_Booniehat_khk", // Booniehat (Khaki)
"H_Booniehat_mcamo", // Booniehat (MTP)
"H_Booniehat_oli", // Booniehat (Olive)
"H_Booniehat_tan", // Booniehat (Sand)
"H_Booniehat_taiga", // Booniehat (Taiga)
"H_Booniehat_tna_F", // Booniehat (Tropic)
"H_Booniehat_wdl", // Booniehat (Woodland)
"H_Booniehat_dgtl", // Booniehat (AAF)
"H_Booniehat_eaf", // Booniehat (LDF)
"H_Cap_grn_BI", // Cap (BI)
"H_Cap_blk", // Cap (Black)
"H_Cap_Black_IDAP_F", // Cap (Black)[IDAP]
"H_Cap_blu", // Cap (Blue)
"H_Cap_blk_CMMG", // Cap (CMMG)
"H_Cap_grn", // Cap (Green)
"H_Cap_blk_ION", // Cap (ION)
"H_Cap_oli", // Cap (Olive)
"H_Cap_oli_hs", // Cap (Olive, Headset)
"H_Cap_Orange_IDAP_F", // Cap (Orange)[IDAP]
"H_Cap_police", // Cap (Police)
"H_Cap_press", // Cap (Press)
"H_Cap_red", // Cap (Red)
"H_Cap_surfer", // Cap (Surfer)
"H_Cap_tan", // Cap (Tan)
"H_Cap_khaki_specops_UK", // Cap (UK)
"H_Cap_usblack", // Cap (US Black)
"H_Cap_tan_specops_US", // Cap (US MTP)
"H_Cap_White_IDAP_F", // Cap (White)[IDAP]
"H_Cap_blk_Raven", // Cap [AAF]
"H_Cap_brn_SPECOPS", // Cap [OPFOR]
"H_Cap_bandanna_F", // Cap with Bandana
"H_EarProtectors_Black_F", // Ear Protectors (Black)
"H_EarProtectors_orange_F", // Ear Protectors (Orange)
"H_EarProtectors_red_F", // Ear Protectors (Red)
"H_EarProtectors_white_F", // Ear Protectors (White)
"H_EarProtectors_yellow_F", // Ear Protectors (Yellow)
"H_Construction_basic_black_F", // Hard Hat (Black)
"H_Construction_earprot_black_F", // Hard Hat (Black, Ear Protectors)
"H_Construction_headset_black_F", // Hard Hat (Black, Headset)
"H_Construction_basic_orange_F", // Hard Hat (Black)
"H_Construction_earprot_orange_F", // Hard Hat (Black, Ear Protectors)
"H_Construction_headset_orange_F", // Hard Hat (Black, Headset)
"H_Construction_basic_red_F", // Hard Hat (Black)
"H_Construction_earprot_red_F", // Hard Hat (Black, Ear Protectors)
"H_Construction_headset_red_F", // Hard Hat (Black, Headset)
"H_Construction_basic_vrana_F", // Hard Hat (Black)
"H_Construction_earprot_vrana_F", // Hard Hat (Black, Ear Protectors)
"H_Construction_headset_vrana_F", // Hard Hat (Black, Headset)
"H_Construction_basic_white_F", // Hard Hat (Black)
"H_Construction_earprot_white_F", // Hard Hat (Black, Ear Protectors)
"H_Construction_headset_white_F", // Hard Hat (Black, Headset)
"H_Construction_basic_yellow_F", // Hard Hat (Black)
"H_Construction_earprot_yellow_F", // Hard Hat (Black, Ear Protectors)
"H_Construction_headset_yellow_F", // Hard Hat (Black, Headset)
"H_Hat_blue", // Hat (Blue)
"H_Hat_brown", // Hat (Brown)
"H_Hat_camo", // Hat (Camo)
"H_Hat_checker", // Hat (Checker)
"H_Hat_grey", // Hat (Grey)
"H_Hat_tan", // Hat (Tan)
"H_Hat_Safari_olive_F", // Safari Hat (Olive)
"H_Hat_Safari_sand_F", // Safari Hat (Sand)
"H_Helmet_skate", // Skate Helmet
"H_StrawHat", // Straw Hat
"H_StrawHat_dark", // Straw Hat (Dark)
"H_Hat_Tinfoil_F" // Tin Foil Hat
];

//(Array of classnames) Safe backpacks (will automatically include civilian backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_civilianBackpacks = [
"B_FieldPack_blk", // Field Pack (Black)
"B_FieldPack_cbr", // Field Pack (Coyote)
"B_FieldPack_green_F", // Field Pack (Green)
"B_FieldPack_khk", // Field Pack (Khaki)
"B_FieldPack_oli", // Field Pack (Olive)
"B_FieldPack_taiga_F", // Field Pack (Taiga)
"G_FieldPack_Medic", // Field Pack ()
"B_Carryall_cbr", // Carryall Backpack (Coyote)
"B_Carryall_khk", // Carryall Backpack (Khaki)
"B_Carryall_oli", // Carryall Backpack (Olive)
"B_TacticalPack_blk", // Tactical Backpack (Black)
"B_TacticalPack_rgr", // Tactical Backpack (Green)
"B_TacticalPack_oli", // Tactical Backpack (Olive)
"B_Kitbag_cbr", // Kitbag (Coyote)
"B_Kitbag_rgr", // Kitbag (Green)
"B_Kitbag_sgg", // Kitbag (Sage)
"B_Messenger_black_F", // Messenger Bag (Black)
"B_Messenger_coyote_F", // Messenger Bag (Coyote)
"B_Messenger_grey_F", // Messenger Bag (Gray)
"B_Messenger_olive_F", // Messenger Bag (Olive)
"B_Messenger_IDAP_F", // Messenger Bag [IDAP]
"B_CivilianBackpack_01_Everyday_Astra_F", // Everyday Backpack (Astra)
"B_CivilianBackpack_01_Everyday_Black_F", // Everyday Backpack (Black)
"B_CivilianBackpack_01_Everyday_Vrana_F", // Everyday Backpack (Vrana)
"B_CivilianBackpack_01_Everyday_IDAP_F", // Everyday Backpack [IDAP]
"B_LegStrapBag_black_F", // Leg Strap Bag (Black)
"B_LegStrapBag_coyote_F", // Leg Strap Bag (Coyote)
"B_LegStrapBag_olive_F", // Leg Strap Bag (Olive)
"B_Messenger_Black_F", // Messenger Bag (Black)
"B_Messenger_Coyote_F", // Messenger Bag (Coyote)
"B_Messenger_Grey_F", // Messenger Bag (Grey)
"B_Messenger_Olive_F", // Messenger Bag (Olive)
"B_Messenger_IDAP_F", // Messenger Bag [IDAP]
"B_CivilianBackpack_01_Everyday_Sport_Blue_F", // Sports Backpack (Blue)
"B_CivilianBackpack_01_Everyday_Sport_Green_F", // Sports Backpack (Green)
"B_CivilianBackpack_01_Everyday_Sport_Red_F", // Sports Backpack (Red)
"ACE_NonSteerableParachute",
"ACE_TacticalLadder_Pack"
];

//(Array of classnames) Safe vehicles to drive in (automatically includes vehicles from the civilian factions above).
_civilianVehicleArray = [];

_HMDallowed = true; //(Bool - true or false) Are HMDs (night vision goggles etc.) safe to wear for units pretending to be civilians? Set to false if wearing HMDs will cause suspicion (must be stored in backpack).

_noOffRoad = true; //Civilian vehicles driving at speed more than 50 meters from the nearest road will immediately be considered hostile (even if false, this will be seen as suspicious)


//-------------------------Enemy Disguise settings-------------------------
_incogFactions = ["A3M_Cartel"]; //Array of enemy factions whose items and vehicles will allow the player to impersonate the enemy

 //Names of additional markers for areas that would be considered trespassing (any with "INC_tre" - case sensitive - somewhere in the marker name will automatically be included)
_trespassMarkers = [];

//(Array of classnames) Safe vests (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoVests = [
"V_PlateCarrier1_rgr_noflag_F" // Carrier Lite (Green, No Flag)
];

//(Array of classnames) Safe headgear (will automatically include incog headgear classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoHeadgear = [
"H_PASGT_basic_olive_F"
];

//(Array of classnames) Safe backpacks (will automatically include incog backpack classes - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoBackpacks = [
"B_AssaultPack_cbr",
"B_FieldPack_taiga_RPG_AT_F", // Field Pack (Taiga)
"G_FieldPack_Medic", // Tactical Backpack (Black)
"I_FieldPack_oli_Repair", // Field Pack (Olive)
"I_Carryall_oli_EXP", // Carryall Backpack (Olive)
"I_Carryall_oli_Eng", // Carryall Backpack (Olive)
];

//(Array of classnames) Safe uniforms (on top of the specific factions above - useful if faction has randomisation script or to add items that are not used by the faction)
_incognitoUniforms = [
"U_I_L_Uniform_01_deserter_F"
];

_incogVehArray = [
"O_G_Van_01_transport_F", // Truck
"O_G_Offroad_01_armed_F", // Offroad (HMG)
"O_G_Offroad_01_AT_F", // Offroad (AT)
"O_G_Offroad_01_F", // Offroad
"I_LT_01_cannon_F", // AWC 304 Nyx (Autocannon)
"I_Truck_02_covered_F", // Zamak Transport (Covered)
"I_Truck_02_box_F", // Zamak Repair
"I_Truck_02_medical_F", // Zamak Medical
"I_Truck_02_fuel_F", // Zamak Fuel
"I_Truck_02_ammo_f" // Zamak Ammo
]; //(Array of classnames) Additional incognito vehicles (vehicles from the faction above will automatically count, as will all _highSecVehicles)



//-------------------------High security zone settings-------------------------
/*
High security zones are areas that can only be entered with specific uniforms / items, even if the unit is disguised as an enemy.
For instance, it could be a radar installation or a marker in the vicinity of a high value target that only specially designated units are allowed near.
All high security zones are automatically considered non-civilian territory, but units dressed as enemies can enter without being instantly considered hostile, but they will attract a LOT more attention.
In these settings, you can .
*/

_highSecMarkers = []; 					//Names of additional markers for areas that are designated high security zones that require specific uniforms to enter without raising suspicion (any with "INC_highSec" - case sensitive - somewhere in the marker name will automatically be included)

_highSecInstantHostile = false;         // If true, units entering high security areas with the wrong uniform will be instantly deemed hostile by enemy forces. If false, it will be highly suspicious.

_highSecVehicles = [
"O_G_Van_01_transport_F", // Truck
"O_G_Offroad_01_armed_F", // Offroad (HMG)
"O_G_Offroad_01_AT_F", // Offroad (AT)
"O_G_Offroad_01_F", // Offroad
"I_LT_01_cannon_F", // AWC 304 Nyx (Autocannon)
"I_Truck_02_covered_F", // Zamak Transport (Covered)
"I_Truck_02_box_F", // Zamak Repair
"I_Truck_02_medical_F", // Zamak Medical
"I_Truck_02_fuel_F", // Zamak Fuel
"I_Truck_02_ammo_f" // Zamak Ammo
];                  // (Array of classnames) Vehicles that can enter high security areas without raising suspicion (uniforms will still be noticed according to how open the vehicle is)

_highSecurityUniforms = [
"U_I_L_Uniform_01_deserter_F"
];             // (Array of classnames) Uniforms that allow entry into high security areas (defined by high security markers)

_highSecItemCheck = true;               // Check for disallowed items that aren't in the permitted list? Each non-permitted item will incur a suspicion penality. Set to false if high security checks just include uniform only.

_highSecItems = ["H_PASGT_basic_olive_F"];                     // (Array of classnames) List of items such as vests, headgear, hats etc., that won't cause suspicion in high security areas (only works on foot for now)

_hsItChkOutside = true;                 // The high security item check will occur if wearing a high security uniform even in non-high security zones. Useful if the high security uniform is, for example, a businessman or scientist, who would look weird carrying a gun and helmet.

_hsMustBeUnarmed = false;               // Units carrying weapons will be considered hostile (requires _highSecItemCheck to be set to true).

_highSecItemCheckScalar = 1;            // Multiplies the level of suspicion caused by each suspect item when in a high security zone


//-------------------------Civilian recruitment settings-------------------------
/*
By enabling civilian recruitment, undercover can recruit any ambient civilians they see into their group (if their reputation allows / the civvy wants to join).
Civilians will operate under similar restrictions to the player.
You can also dismiss your new teammates and they will leave your group and carry on doing whatever it is they fancy doing (usually sitting cross-legged in the middle of a field).
*/

_civRecruitEnabled = enable;          //(Bool - true or false) Set this to false to prevent undercover units from recruiting civilians
_armedCivPercentage = 50;           //(Number - 0 to 100) Max percentage of civilians armed with weapons from the array below, either on their person or in their backpacks (will only work if _civRecruitEnabled is set to true, otherwise this is ignored)

//Weapon classnames for armed civilians (array of classnames)
_civWpnArray = [
"arifle_AKM_F",
"arifle_AKS_F",
"sgun_HunterShotgun_01_F",
"sgun_HunterShotgun_01_sawedoff_F",
"srifle_DMR_06_hunter_F",
"hgun_PDW2000_F",
"SMG_05_F"
];

//Items that civilians may carry
_civItemArray = [
"ACE_Cellphone",
"ACE_Banana",
"ACE_Flashlight_KSF1",
"ACE_SpraypaintBlack",
"itemRadio",
"ACE_RangeCard",
"ACE_key_civ",
"ACE_key_lockpick",
"ACE_fieldDressing",
"IEDUrbanSmall_F",
"IEDUrbanSmall_F"
];

//Civilian backpack classes (array of classnames)
_civPackArray = [
"B_FieldPack_blk",
"B_FieldPack_cbr",
"B_FieldPack_khk",
"B_FieldPack_oucamo",
"G_FieldPack_Medic",
"B_Carryall_cbr",
"B_Carryall_khk",
"B_Carryall_oucamo",
"B_TacticalPack_blk",
"B_TacticalPack_rgr",
"B_TacticalPack_oli",
"B_Kitbag_cbr",
"B_Kitbag_rgr",
"B_Kitbag_sgg",
"B_Messenger_black_F",
"B_Messenger_coyote_F",
"B_Messenger_grey_F",
"B_Messenger_olive_F",
"B_Messenger_IDAP_F",
"B_CivilianBackpack_01_Everyday_Astra_F",
"B_CivilianBackpack_01_Everyday_Black_F",
"B_CivilianBackpack_01_Everyday_Vrana_F",
"B_CivilianBackpack_01_Everyday_IDAP_F",
"B_LegStrapBag_black_F",
"B_LegStrapBag_coyote_F",
"B_LegStrapBag_olive_F",
"B_Messenger_Black_F",
"B_Messenger_Coyote_F",
"B_Messenger_Grey_F",
"B_Messenger_Olive_F",
"B_Messenger_IDAP_F",
"B_CivilianBackpack_01_Everyday_Sport_Blue_F",
"B_CivilianBackpack_01_Everyday_Sport_Green_F",
"B_CivilianBackpack_01_Everyday_Sport_Red_F"
];
