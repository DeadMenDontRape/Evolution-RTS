-- UNITDEF -- EAMPHIBARTY --
--------------------------------------------------------------------------------

local unitName = "eamphibarty"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.18,
  brakeRate          = 0.2,
  buildCostEnergy    = 0,
  buildCostMetal     = 40,
  builder            = false,
  buildTime          = 10,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "AMPHIB SUPPORT",
  corpse             = "ammobox",
  description        = [["Laser Support Artillery - Damagetype: Piercing :: Armortype: Light
	� Switches to torpedos when underwater]],
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "BIG_UNIT",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "amphib",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 400,
  maxSlope           = 28,
  maxVelocity        = 3.0,
  maxReverseVelocity = 1,
  minWaterDepth      = 28,
  metalStorage       = 0,
  movementClass      = "TANK4",
  name               = "Splitter (A)",
  objectName         = "eamphibarty.s3o",
  radarDistance      = 0,
  selfDestructAs     = "BIG_UNIT",
  sightDistance      = 600,
  SonarDistance      = 425;
  stealth			 = true,
  sonarStealth		 = false,
  smoothAnim         = true,
  turnInPlace        = false,
  turnRate           = 300,
  unitname           = "eamphibarty",
  workerTime         = 0,
    sfxtypes = {
    explosiongenerators = {
      "custom:factorysparks",
      "custom:dirt",
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
    [1]  = {
      def                = "assimilatorweapon",
      onlyTargetCategory = "NOTAIR AMPHIB",
    },
	[2]  = {
      def                = "TORP",
    },
  },
   customParams = {
	twokhotkey = 'a',
    RequireTech = "10 Power",
	armortype   = "lightarmor",
	normaltex = "unittextures/eamphibartynormal.png", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  assimilatorweapon = {
    areaOfEffect       = 8,
    avoidFeature       = false,
    avoidFriendly      = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    collideFeature     = false,
    collideFriendly    = false,
    color              = 144,
    color2             = 217,
    coreThickness      = 0.5,
    duration           = 0.4,
    explosionGenerator = "custom:burn",
	energypershot      = 15,
    fallOffRate        = 0.1,
    fireStarter        = 50,
	interceptedByShieldType = 4,
    largeBeamLaser     = true,
    lineOfSight        = true,
    name               = "Laser",
    range              = 1175,
    reloadtime         = 9,
    WeaponType         = "LaserCannon",
    soundHit           = "18403_inferno_xplosm2.wav",
    soundStart         = "laserbeam02.wav",
    soundTrigger       = true,
    sweep              = "1",
    sweepfire          = true,
    texture1           = "plasmaball",
    texture2           = "empty",
    thickness          = 5,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 1500,
	customparams = {
	  damagetype		= "beam",  
    }, 
    damage = {
      default           = 150,
    },
  },
  
  TORP = {
	rendertype		= 1,
	lineofsight		= 1,
	turret			= 1,
    model              = "torpedo.s3o",
    energypershot      = 15,
	propeller		= 1,
	range			= 1175,
	reloadtime		= 9,
	weapontimer		= 9,
	weaponvelocity	= 1500,
	startvelocity	= 25,
	weaponacceleration	= 25,
	areaofeffect	= 8,
    soundHit           = "subhit.wav",
    soundStart         = "torpedolaunch.wav",
    explosionGenerator = "custom:dodaibomb",
	selfprop		= 1,
	waterweapon		= 1,
	burnblow		= 1,
	predictboost	= 0,
	impulsefactor	= 0,
	cratermult		= 0,
	craterboost		= 0,
	noselfdamage	= 1,
	avoidfriendly	= 0,
	collidefriendly	= 0,
	customparams = {
	  damagetype		= "beam",  
    }, 
    damage = {
      default            = 150,
    },
  },  
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------