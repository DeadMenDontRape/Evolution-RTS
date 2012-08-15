-- UNITDEF -- ESUBPLANE --
--------------------------------------------------------------------------------

local unitName = "esubplane"

--------------------------------------------------------------------------------

local unitDef = {

  acceleration       = 0.2,
  altfromsealevel    = "1",
  BadTargetCategory  = "VTOL",
  brakeRate          = 0.2,
  buildCostEnergy    = 0,
  buildCostMetal     = 70,
  builder            = false,
  buildTime          = 2.5,
  canFly             = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT VTOL",
  collide            = true,
  collisionSphereScale = 1,
  corpse             = "ammobox",
  cruiseAlt          = 350,
  description        = "Stealth Sonar Plane - Can morph into a submarine",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "BIG_UNIT",
  footprintX         = 4,
  footprintZ         = 4,
  floater            = false,
  iconType           = "air",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  loopbackattack     = "1",
  maxAcc             = 0.18,
  maxDamage          = 200,
  maxSlope           = 10,
  maxVelocity        = 18,
  maxWaterDepth      = 6000,
   amphibious         = true,
   canSubmerge        = true,
  metalStorage       = 0,
  name               = "SeaGull",
  noChaseCategory    = "VTOL",
  objectName         = "esubplane.s3o",
  radarDistance      = 0,
  radarDistanceJam   = 100,
  repairable		 = false,
 selfDestructAs     = "BIG_UNIT",
  side               = "CORE",
  sightDistance      = 800,
  sonardistance      = 1500,
  smoothAnim         = true,
  stealth            = true,
  turnRate           = 1500,
  TurnRadius         = 1000,
  unitname           = "esubplane",
  workerTime         = 0,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:jethtrail",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
  },
  
   customParams = {
   	death_sounds = "soldier",
    RequireTech = "10 Power",
	armortype   = "light",
	normaltex = "unittextures/esubplanenormal.png", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  TBOMB = {
    AreaOfEffect       = 150,
    avoidFriendly      = false,
    avoidFeature       = false,
    ballistic          = true,
    burst              = 5,
    burstrate          = 0.1,
    cegTag             = "torpedotrail",
    collideFriendly    = false,
    cylinderTargeting = true,
    Commandfire        = true,
    explosionGenerator = "custom:dodaibomb",
    id                 = 5,
    
    name               = "Bombs",
    noSelfDamage       = true,
    range              = 800,
    reloadtime         = 8,
    soundHit           = "subhit.wav",
    soundStart         = "18393_inferno_reject.wav",
    startVelocity      = 100,
    sprayangle         = 2000,
    turret             = true,
    tracks             = true,
    tolerance          = 1000,
    turnrate           = 900,
    weaponVelocity     = 400,
    WeaponType         = "MissileLauncher",
    WeaponAcceleration = 100,
    flighttime         = 10,
    waterweapon        = true,
    damage = {
      default            = 20,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
