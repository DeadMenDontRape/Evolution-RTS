unitDef                    = {
	acceleration                 = 1,
	brakeRate                    = 1,
	buildCostEnergy              = 0,
	buildCostMetal               = 110,
	builder                      = false,
	buildTime                    = 5,
	canAttack                    = true,
	
	canGuard                     = true,
	canHover                     = true,
	canMove                      = true,
	canPatrol                    = true,
	canstop                      = "1",
	category                     = "BUILDING NOTAIR",
	corpse                       = "ammobox",
	description                  = [[Tank Destroyer Artillery Turret • Uses +]] .. supply .. [[ Supply]],
	energyMake                   = 0,
	energyStorage                = 0,
	energyUse                    = 0,
	explodeAs                    = "mediumExplosionGenericRed",
	floater			              = true,
	footprintX                   = 3,
	footprintZ                   = 3,
	--highTrajectory		   		 = 2,
	iconType                     = "turret_arm",
	idleAutoHeal                 = .5,
	idleTime                     = 2200,
	leaveTracks                  = false,
	maxDamage                    = 1400,
	maxSlope                     = 26,
	maxVelocity                  = 0.001,
	maxReverseVelocity           = 0.001,
	maxWaterDepth                = 5000,
	metalStorage                 = 0,
	movementClass                = "HOVERHBOT3",
	pushResistant				 = true,
	name                         = humanName,
	noChaseCategory              = "VTOL",
	objectName                   = objectName,
	script			             = script,
	radarDistance                = 0,
	repairable		             = false,
	selfDestructAs               = "mediumExplosionGenericRed",
	side                         = "CORE",
	sightDistance                = 1000,
	smoothAnim                   = true,
	stealth			             = false,
	seismicSignature             = 2,
	transportbyenemy             = false;
	--  turnInPlace              = false,
	--  turnInPlaceSpeedLimit    = 5.5,
	turnInPlace                  = true,
	turnRate                     = 0.001,
	--  turnrate                 = 475,
	unitname                     = unitName,
	--usePieceCollisionVolumes	 = true,
	upright                      = true,
	workerTime                   = 0,

	sfxtypes                     = {
		explosiongenerators      = {
			"custom:gdhcannon",
			"custom:dirt",
			"custom:blacksmoke",
			"custom:airfactoryhtrail",
		},
		pieceExplosionGenerators = {
			"deathceg3",
			"deathceg4",
		},	
	},

	sounds                       = {
		underattack              = "unitsunderattack1",
		ok                       = {
			"ack",
		},
		select                   = {
			"unitselect",
		},
	},
	weapons                      = {
		[1]                      = {
			def                  = "rockets",
--			mainDir = "0 0 1", -- x:0 y:0 z:1 => that's forward!
--			maxAngleDif = 70,
			onlyTargetCategory    = "LIGHT ARMORED BIO",
		},
	},
	customParams                 = {
		isupgraded			  	 = isUpgraded,
		unittype				  = "mobile",
		canbetransported 		 = "true",
		needed_cover             = 1,
		death_sounds             = "generic",
		RequireTech              = tech,
		armortype                = armortype,
		nofriendlyfire	         = "1",
		supply_cost              = supply,
		normaltex               = "unittextures/lego2skin_explorernormal.dds", 
		buckettex                = "unittextures/lego2skin_explorerbucket.dds",
		factionname	             = "outer_colonies",  
	},
}

weaponDefs                 = {
	rockets             = {
		accuracy				 = 1000,
		AreaOfEffect             = 500,
		avoidFriendly            = false,
		avoidFeature             = false,
		collideFriendly          = false,
		collideFeature           = false,
		cegTag                   = "missiletrailsmall",
		explosionGenerator       = "custom:genericshellexplosion-large-red",
		energypershot            = 0,
		fireStarter              = 70,
		impulseFactor            = 0,
		interceptedByShieldType  = 4,
		model                    = "missilesmalllauncher.s3o",
		name                     = "Rockets",
		range                    = 1000,
		reloadtime               = 2.5,
		weaponType		         = "MissileLauncher",
		smokeTrail               = false,
		soundStart               = "weapons/emediumtankfire2.wav",
		soundHit                 = "explosions/explode5.wav",
		startVelocity            = 250,
		tolerance                = 8000,
		turnrate                 = 1500,
		turret                   = true,
		tracks                   = true,
		weaponAcceleration       = 100,
		flightTime               = 3,
		weaponVelocity           = 1500,
		customparams             = {
			damagetype		     = "ehbotrocko",  
			isupgraded			  	 = isUpgraded,
		},     
		damage                   = {
			default              = 100,
		},
	},
}