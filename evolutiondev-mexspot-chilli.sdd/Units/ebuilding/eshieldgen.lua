-- UNITDEF -- ESHIELDGEN --
--------------------------------------------------------------------------------

local unitName = "eshieldgen"

--------------------------------------------------------------------------------

local unitDef = {
  buildAngle         = 8192,
  buildCostEnergy    = 0,
  buildCostMetal     = 200,
  builder            = false,
  buildTime          = 5,
  canAttack          = false,
  canstop            = "1",
  category           = "BUILDING NOTAIR",
  corpse             = "ammobox",
  description        = [[Anti-Nuke Platform
Anti-Artillery base shield Facility

Requires +10 Power
Drains -50 Energy while stockpiling Anti-Nuke Ammunition
Drains -2.5 Energy while charging shield

30 Second Anti-Nuke laser cooldown after every Nuke destroyed]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "MEDIUM_BUILDING",
  footprintX         = 5,
  footprintZ         = 5,
  iconType           = "defense",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 4000,
  maxSlope           = 30,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "Protector",
  objectName         = "eshieldgen.s3o",
  onlytargetcategory2 = "NOTAIR",
  onlytargetcategory3 = "NOTAIR",
  onlytargetcategory4 = "NOTAIR",
  onlytargetcategory5 = "NOTAIR",
  onlytargetcategory6 = "NOTAIR",
  radarDistance      = 0,
  repairable		 = false,
  selfDestructAs     = "MEDIUM_BUILDING",
  side               = "ARM",
  sightDistance      = 600,
  smoothAnim         = true,
  unitlimit          = "2",
  unitname           = "eshieldgen",
  workerTime         = 0,
  yardMap            = "ooooo ooooo ooooo ooooo ooooo",
  
sfxtypes = {
	pieceExplosionGenerators = {
		"deathceg0",
		"deathceg1",
	},
	
	explosiongenerators = {
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
      def                = "nukeinterceptor",
    },
    [2]  = {
      def                = "shield",
    },
    [3]  = {
      def                = "FX",
    },
  },
  customParams = {
    needed_cover = 5,
	death_sounds = "generic",
    RequireTech = "10 Power",
    ProvideTechRange = "300",
	armortype   = "building", 
	normaltex = "unittextures/eshieldgennormal.png", 
	helptext = [[Anti-Nuke Platform / Anti-Artillery base shield Facility]],
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=8,
	buildingGroundDecalSizeY=8,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[eshieldgen_aoplane.dds]],
}


--------------------------------------------------------------------------------

local weaponDefs = {
  nukeinterceptor = {
    AreaOfEffect       = 8,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 5,
    collideFeature     = false,
    collideFriendly    = false,
	coverage			= 2500,
    rgbColor           = "0 0 0.5",
    rgbColor2          = "0.5 0.5 0.5",
    coreThickness      = 0.5,
    duration           = 0.4,
    explosionGenerator = "custom:burn",
	energypershot      = 5000,
    fallOffRate        = 0.1,
    fireStarter        = 50,
	interceptor			= 1,
	interceptSolo		= true,
    largeBeamLaser     = true,
	laserflaresize 	   = 5,
    lineOfSight        = true,
	minintensity       = 1,
    name               = "Laser",
    range              = 2500,
    reloadtime         = 30,
    WeaponType         = "BeamLaser",
    soundStart         = "antinukelaser.wav",
    soundTrigger       = true,
	stockpile			= true,
	stockpiletime		= 100,
    texture1           = "lightning",
    texture2           = "laserend",
    thickness          = 20,
    tolerance          = 500,
    turret             = true,
    weaponVelocity     = 1500,
	waterweapon		   = true,
	customparams = {
	  damagetype		= "antibuildingassimilator",  
    }, 
    damage = {
      default           = 50000,
    },
  },
  
  shield = {
	IsShield         = true,
    Smartshield      = true,
    Exteriorshield   = true,
    Visibleshield    = true,
    Visibleshieldrepulse = true,
    ShieldStartingPower = 0,
    Shieldenergyuse  = 0,
    Shieldradius     = 1500,
    Shieldpower      = 5000,
    Shieldpowerregen = 25,
    Shieldpowerregenenergy = 2.5,
    Shieldintercepttype = 4,
    Shieldgoodcolor  = "0.2 0.2 0.5",
    Shieldbadcolor   = "1 1 1",
    Shieldalpha      = 0.3,
    ShieldRepulsor   = false,
    visibleShieldHit = true,
    visibleShieldHitFrames = 50,
    weaponType       = [[Shield]],
    damage = {
      default            = 1,
    },
  },
  
  FX = {
    AreaOfEffect       = 0,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamlaser          = 1,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.1,
    duration           = 10,
    energypershot      = 0,
    explosionGenerator = "custom:empty",
    fallOffRate        = 0.1,
    fireStarter        = 90,
    guidance           = true,
    id                 = 666,
    impluse            = "0",
    interceptor        = true,
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "fake",
    range              = 0,
    reloadtime         = 300,
    WeaponType         = "BeamLaser",
    rgbColor           = "0 0 1",
    rgbColor2          = "1 0.5 0",
    sweep              = "1",
    sweepfire          = true,
    targetMoveError    = 0,
    texture            = "fireyexplo",
    thickness          = 5,
    tolerance          = 8000,
    turret             = true,
    weaponVelocity     = 1000,
    damage = {
      default            = 1E-06,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------