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
			locationName = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(31539,	Z.THE_JADE_FOREST,		54.8,	45.0,	"Neutral")
	AddQuest(39933,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(39935,	Z.AZSUNA,			43.2,	43.2,	"Neutral")
	AddQuest(39938,	Z.AZSUNA,			54.0,	15.4,	"Alliance")
	AddQuest(39940,	Z.AZSUNA,			65.0,	25.8,	"Alliance")
	AddQuest(39943,	Z.AZSUNA,			65.0,	25.8,	"Neutral")
--	AddQuest(39950,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(39954,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(39956,	Z.IRONFORGE,			76.8,	8.8,	"Alliance")
	AddQuest(39957,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(39960,	Z.UNDERCITY,			77.0,	38.6,	"Horde")
	AddQuest(40052,	Z.DALARAN_BROKENISLES,		41.4,	37.2,	"Neutral")
	AddQuest(40057,	Z.AZSUNA,			43.2,	43.2,	"Horde")
	AddQuest(40060,	Z.AZSUNA,			54.0,	15.2,	"Horde")
	AddQuest(40065,	Z.AZSUNA,			43.2,	43.2,	"Neutral")
	AddQuest(41663,	Z.AZSUNA,			46.8,	41.4,	"Neutral")
	AddQuest(41664,	Z.VALSHARAH,			54.6,	73.2,	"Neutral")
	AddQuest(41665,	Z.THUNDER_TOTEM,		38.4,	45.8,	"Neutral")
	AddQuest(41666, Z.STORMHEIM,			60.2,	51.2,	"Neutral")
	AddQuest(41667, Z.SURAMAR,			36.4,	45.8,	"Neutral")
	AddQuest(41668, Z.DALARAN_BROKENISLES,		33.4,	48.0,	"Neutral")

	self.InitializeQuests = nil
end
