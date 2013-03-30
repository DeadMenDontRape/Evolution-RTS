-- UNITDEF -- ELIGHTTURRET2 --
--------------------------------------------------------------------------------

local unitName = "elightturret2"

--------------------------------------------------------------------------------

local unitDef = {

  buildAngle         = 2048,
  buildCostEnergy    = 0,
  buildCostMetal     = 40,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  canstop            = "1",
  category           = "BUILDING NOTAIR",
  collisionVolumeTest = "1",
  corpse             = "ammobox",
  description        = [[Anti-Raid Defense Platform (Anti-Light)
Building
400% Damage vs Light
100% Damage vs Armored
10% Damage vs Buildings]],
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "MEDIUM_BUILDING",
  footprintX         = 4,
  footprintZ         = 4,
  idleAutoHeal       = .5,
  idleTime           = 2200,
  iconType           = "defense",
  maxDamage          = 250,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "Lightning Rod (t)",
  objectName         = "elightturret3.s3o",
  onlytargetcategory2 = "NOTAIR",
  onlytargetcategory3 = "NOTAIR",
  onlytargetcategory4 = "NOTAIR",
  onlytargetcategory5 = "NOTAIR",
  onlytargetcategory6 = "NOTAIR",
  radarDistance      = 0,
  repairable		 = false,
-- script			 = "elightturret2-script.lua",
  selfDestructAs     = "MEDIUM_BUILDING",
  side               = "CORE",
  sightDistance      = 750,
  smoothAnim         = true,
  unitname           = "elightturret2",
  workerTime         = 0,
  yardMap            = "oooo oooo oooo oooo",

  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:electricity",
      "custom:needspower",
	  "custom:blacksmoke",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "turretselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "lighteweapon",
      badTargetCategory  = "VTOL ARMORED",
      onlyTargetCategory = "LIGHT VTOL ARMORED",
    },
  },
  customParams = {
    needed_cover = 2,
	death_sounds = "generic",
	twokhotkey = 't',
	armortype   = "building",
	normaltex = "unittextures/lego2skin_explorernormal.png", 
	helptext = [[]],
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=6,
	buildingGroundDecalSizeY=6,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[elightturret2_aoplane.dds]],
}


--------------------------------------------------------------------------------

local weaponDefs = {
  lighteweapon = {
    AreaOfEffect       = 25,
    avoidFriendly      = false,
    collideFriendly    = false,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = "custom:LIGHTNINGPLOSION1",
	energypershot      = 12.5,
    impulseBoost       = 0,
    impulseFactor      = 0,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    noSelfDamage       = true,
    range              = 750,
    reloadtime         = 1,
    WeaponType         = "LightningCannon",
    rgbColor           = "0.1 0.2 0.5",
    rgbColor2          = "0 0 1",
    soundStart         = "jacobs.wav",
    startsmoke         = "1",
    texture1           = "lightning",
    thickness          = 10,
    turret             = true,
    weaponVelocity     = 400,
	customparams = {
	  damagetype		= "antilightturret",  
    },      
    damage = {
      default            = 31.25,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
