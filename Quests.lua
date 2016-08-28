-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

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

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			location = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(31539,	Z.THE_JADE_FOREST,		54.8,	45.0,	"Neutral")
	AddQuest(39933,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(39935,	Z.AZSUNA,			43.2,	43.2,	"Alliance")
	AddQuest(39938,	Z.AZSUNA,			0.0,	0.0,	"Alliance") --Needs updating
	AddQuest(39940,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39943,	Z.AZSUNA,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(39950,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(39956,	Z.IRONFORGE,			76.8,	8.8,	"Alliance")
	AddQuest(39957,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(39960,	Z.UNDERCITY,			77.0,	38.6,	"Horde")
	AddQuest(40052,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(40057,	Z.AZSUNA,			43.2,	43.2,	"Horde")
	AddQuest(40060,	Z.AZSUNA,			0.0,	0.0,	"Horde") --Needs updating
	AddQuest(41665,	Z.HIGHMOUNTAIN,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41666, Z.STORMHEIM,			0.0,	0.0,	"Neutral") --Needs updating
	AddQuest(41668, Z.DALARAN_BROKENISLES,		0.0,	0.0,	"Neutral") --Needs updating

	self.InitializeQuests = nil
end
