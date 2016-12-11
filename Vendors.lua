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

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end

	AddVendor(14847,	L["Professor Thaddeus Paleo"],		Z.DARKMOON_ISLAND,		51.8,	60.6,	"Neutral")
	AddVendor(18072,	L["Elementalist Sharvak"],		Z.NAGRAND_OUTLAND,		60.6,	22.2,	"Neutral")
	AddVendor(77372,	L["Eric Broadoak"],			Z.LUNARFALL,			 0.0,	 0.0,	"Alliance") -- Alliance Garrison
	AddVendor(79829,	L["Urgra"],				Z.FROSTWALL,			 0.0,	 0.0,	"Horde") -- Horde Garrison
	AddVendor(87063,	L["Joao Calhandro"],			Z.STORMSHIELD,			63.0,	34.4,	"Alliance") -- Alliance Ashran
	AddVendor(87551,	L["Maru'sa"],				Z.WARSPEAR,			76.0,	48.6,	"Horde") -- Horde Ashran
	AddVendor(93544,	L["Jang Quillpaw"],			Z.DALARAN_BROKENISLES,		41.2,	36.8,	"Neutral")
	AddVendor(94100,	L["Lucas Sigmund"],			Z.HIGHMOUNTAIN,			40.0,	52.4,	"Neutral")
	AddVendor(106887,	L["Cravitz Lorent"],			Z.DALARAN_BROKENISLES,		47.0,	28.8,	"Neutral")

	self.InitializeVendors = nil
end
