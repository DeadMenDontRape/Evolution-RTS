-- UNITDEF -- EFIGHTER --
--------------------------------------------------------------------------------

unitName = "efighter_up3"

--------------------------------------------------------------------------------

isUpgraded = [[3]]

humanName = [[Koyote Mark IV]]

objectName = "efighter2.s3o"
script = "efighter2.cob"


tech = [[tech0]]
armortype = [[light]]
supply = [[2]]

VFS.Include("units-configs-basedefs/basedefs/air/efighter_basedef.lua")

unitDef.weaponDefs = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
