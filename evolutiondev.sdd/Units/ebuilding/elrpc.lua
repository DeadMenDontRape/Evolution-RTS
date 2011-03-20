-- UNITDEF -- ELRPC --
--------------------------------------------------------------------------------

local unitName = "elrpc"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  buildCostEnergy    = 0,
  buildCostMetal     = 200,
  builder            = false,
  buildTime          = 10,
  canAttack          = true,
  canstop            = "1",
  category           = "NOTAIR",
  
   collisionVolumeOffsets = "0 0 0",
   collisionVolumeScales  = "120 310 120",
   collisionVolumeTest    = 1,
   collisionVolumeType    = "box",
  
  corpse             = "ammobox",
  description        = "Long Range Plasma Cannon - 50e Per Shot",
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "LARGE_BUILDING",
  footprintX         = 8,
  footprintZ         = 8,
  iconType           = "lrpc",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 2400,
  maxSlope           = 30,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "Executioner (L)",
  noChaseCategory    = "VTOL",
  objectName         = "elrpc.s3o",
  onlytargetcategory2 = "NOTAIR",
  onlytargetcategory3 = "NOTAIR",
  onlytargetcategory4 = "NOTAIR",
  onlytargetcategory5 = "NOTAIR",
  onlytargetcategory6 = "NOTAIR",
  radarDistance      = 0,
  selfDestructAs     = "LARGE_BUILDING",
  side               = "ARM",
  sightDistance      = 900,
  smoothAnim         = true,
  unitname           = "elrpc",
  workerTime         = 0,
  yardMap            = "ooooooooo",
  sfxtypes = {
    explosiongenerators = {
      "custom:electricity",
      "custom:factorysparks",
	  "custom:needspower",
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
      def                = "lrpcweapon",
      onlyTargetCategory = "NOTAIR AMPHIB",
    },
  },
  customParams = {
	twokhotkey = 'l',
    RequireTech = "15 Power",
	armortype   = "building",
	normaltex = "unittextures/elrpcnormal.png", 
	helptext = [[Long Range Plasma Cannon

LRPC�s provide long range bombardment of defensive positions and base structures.

Damagetype: Explosive

Armortype: Building

+900 Line of Sight

+6000 Range

+200 Area of Effect

-100 Energy per Shot

10s Reload Time

Requires:

+15 Power]],
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=11,
	buildingGroundDecalSizeY=11,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[elrpc_aoplane.dds]],
}


--------------------------------------------------------------------------------

local weaponDefs = {
  lrpcweapon = {
    accuracy           = 500,
    areaOfEffect       = 200,
    avoidFriendly      = false,
    cegTag             = "BURNGREEN",
    collideFriendly    = false,
    explosionGenerator = "custom:BLUE_EXPLOSION",
    fireStarter        = 70,
    guidance           = false,
    id                 = 136,
    interceptedByShieldType = 1,
    lineOfSight        = true,
    energypershot       = 100,
    model              = "rocket.s3o",
    name               = "Rockets",
    range              = 6000,
    reloadtime         = 10,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = ".1",
    smokeTrail         = false,
    soundHit           = "lrpchit.wav",
    soundStart         = "heavyplasmashot.wav",
    startsmoke         = "0",
    tolerance          = 8000,
    turnRate           = 4680,
    turret             = true,
    weaponTimer        = 5,
    weaponVelocity     = 800,
	customparams = {
	  damagetype		= "explosive",  
    },      
    damage = {
      default            = 250,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------