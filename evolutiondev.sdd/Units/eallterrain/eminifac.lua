-- UNITDEF -- EMINIFAC --
--------------------------------------------------------------------------------

local unitName = "eminifac"

--------------------------------------------------------------------------------

local unitDef = {

  activatewhenbuilt  = false,
  buildAngle         = 1024,
  buildCostEnergy    = 0,
  buildCostMetal     = 250,
  builder            = true,
  buildTime          = 2.5,
  canBeAssisted      = false,
  canPatrol          = true,
  canstop            = "1",
  category           = "BUILDING NOTAIR",
  
   collisionVolumeOffsets = "0 60 0",
   collisionVolumeScales  = "298 142 168",
   collisionVolumeTest    = 1,
   collisionVolumeType    = "box",
  
  corpse             = "ammobox",
  
-- Cloaking

	cancloak		 = true,
	cloakCost		 = 20,
	minCloakDistance = 250,
	decloakOnFire	 = true,
	decloakSpherical = true,
	initCloaked		 = false,
	
-- End Cloaking
  
  description        = [[Produces Units
  
  Provides powergrid]],
  energyStorage      = 0,
  energyUse          = 0,
  energyMake         = 0,
  explodeAs          = "MEXPOP2",
  footprintX         = 21,
  footprintZ         = 21,
  iconType           = "factory",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 5000,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  metalMake          = 0,
  name               = "All-Terrain Factory (X)",
  objectName         = "eminifac.s3o",
  radarDistance      = 0,
  selfDestructAs     = "LARGE_BUILDING",
  showNanoSpray      = "0",
  sightDistance      = 388,
  smoothAnim         = true,
  stealth			 = true,
  seismicSignature   = 1,
  TEDClass           = "PLANT",
  unitname           = "eminifac",
  unitRestricted	 = 1,
  workerTime         = 1,
  yardMap            = "ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy",
--  usePieceCollisionVolumes = true,
  useBuildingGroundDecal = true,
  BuildingGroundDecalType = "towerdecal2.png",
  BuildingGroundDecalSizeX = 23,
  BuildingGroundDecalSizeY = 23,
  BuildingGroundDecalDecaySpeed = 0.9,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:nanoflame",
      "custom:nano",
	  "custom:blacksmoke",
    },
  },
  buildoptions = {
    "eallterrengineer", --new
    "eallterrlight",
	"eallterrriot",
    "eallterrmed",
    "eallterrheavy",
	"eallterrassault",
	"eallterrshield",
  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "gdfactoryselect",
    },
  },
  customParams = {
  	death_sounds = "generic",
	twokhotkey = 'x',
	armortype   = "building", 
	normaltex = "unittextures/eminifacnormal.png", 
	ProvideTech = "1 Powergrid",
    ProvideTechRange = "1500",
	groundtexselectimg = ":nc:bitmaps/power/powergrid.png",
	groundtexselectxsize = 1500, -- optional
    groundtexselectzsize = 1500, -- optional
  },
	buildingGroundDecalDecaySpeed=30,
	buildingGroundDecalSizeX=23,
	buildingGroundDecalSizeY=23,
	useBuildingGroundDecal = true,
	buildingGroundDecalType=[[eminifac_aoplane.dds]],
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
