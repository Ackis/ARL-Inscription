-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)
local L = _G.LibStub("AceLocale-3.0"):GetLocale(addon.constants.addon_name)

local BN = constants.BOSS_NAMES
local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeMobDrops()
	local function AddMob(npcID, npcName, zoneName, coordX, coordY)
		addon.AcquireTypes.MobDrop:AddEntity(module, {
			coord_x = coordX or 0,
			coord_y = coordY or 0,
			faction = nil,
			identifier = npcID,
			item_list = {},
			locationName = zoneName,
			name = npcName,
		})
	end

	AddMob(17380,	BN.BROGGOK,				Z.THE_BLOOD_FURNACE,		0.0, 0.0)
	AddMob(26679,	L["Silverbrook Trapper"],		Z.GRIZZLY_HILLS,		27.3, 33.9)
	AddMob(26708,	L["Silverbrook Villager"],		Z.GRIZZLY_HILLS,		27.3, 33.9)
	AddMob(27546,	L["Silverbrook Hunter"],		Z.GRIZZLY_HILLS,		37.5, 68.0)
	AddMob(27676,	L["Silverbrook Defender"],		Z.GRIZZLY_HILLS,		24.6, 33.3)
	AddMob(101002,	BN.KROSUS,				Z.THE_NIGHTHOLD,		0.0, 0.0)
	AddMob(102263,	BN.SKORPYRON,				Z.THE_NIGHTHOLD,		0.0, 0.0)
	AddMob(102679,	BN.DRAGONS_OF_NIGHTMARE,		Z.THE_EMERALD_NIGHTMARE,	0.0, 0.0)
	AddMob(103160,	BN.NYTHENDRA,				Z.THE_EMERALD_NIGHTMARE,	0.0, 0.0)
	AddMob(104288,	BN.TRILLIAX,				Z.THE_NIGHTHOLD,		0.0, 0.0)
	AddMob(104415,	BN.CHRONOMATIC_ANOMALY,			Z.THE_NIGHTHOLD,		0.0, 0.0)
	AddMob(104528,	BN.HIGH_BOTANIST_TELARN,		Z.THE_NIGHTHOLD,		0.0, 0.0)
	AddMob(105393,	BN.ILGYNOTH__HEART_OF_CORRUPTION,	Z.THE_EMERALD_NIGHTMARE,	0.0, 0.0)
	AddMob(107699,	BN.SPELLBLADE_ALURIEL,			Z.THE_NIGHTHOLD,		0.0, 0.0)
	AddMob(109943,	BN.ANA_MOUZ,				Z.SURAMAR,			31.7, 66.4)
	AddMob(110965,	BN.GRAND_MAGISTRIX_ELISANDE,		Z.THE_NIGHTHOLD,		0.0, 0.0)
	AddMob(111057,	L["The Rat King"],			Z.THE_ARCWAY,			0.0, 0.0)
	AddMob(117269,	BN.KILJAEDEN,				Z.TOMB_OF_SARGERAS,		0.0, 0.0)

	self.InitializeMobDrops = nil
end
