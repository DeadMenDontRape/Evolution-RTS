-- UNITDEF -- EBOMBER --
--------------------------------------------------------------------------------

unitName = "ebomber_up1"

--------------------------------------------------------------------------------

isUpgraded = [[1]]

humanName = [[Kamper Mark II]]

objectName = "ebomber2.s3o"
script = "ebomber2.cob"


tech = [[tech1]]
armortype = [[light]]
supply = [[5]]

VFS.Include("Units-Configs-Basedefs/basedefs/air/ebomber_basedef.lua")

unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
