name = "Fast Equipment"
version = "1.15"
description = "Adds buttons over the inventory that give a fast access to the best main tools, weapons, armors, helmets and light resources. Besides optionally adds keybinds for the mentioned tools."
author = "IceGrog"
forumthread = ""
icon = "modicon.tex"
icon_atlas = "modicon.xml"

api_version = 6

dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true


local keyslist = {}
local string = ""

local FIRST_NUMBER = 48
for i = 1, 10 do
	local ch = string.char(FIRST_NUMBER + i - 1)
	keyslist[i] = {description = ch, data = ch}
end

local FIRST_LETTER = 65
for i = 11, 36 do
	local ch = string.char(FIRST_LETTER + i - 11)
	keyslist[i] = {description = ch, data = ch}
end

keyslist[37] = {description = "DISABLED", data = false}

numbers = {}
for i = 0, 5 do
	numbers[i+1] = {description = i, data = i}
end

configuration_options = {
  {
    name = "Key_Axe",
    label = "Axe's Keybind",
    default = "1",
    options = keyslist
  },
  {
    name = "Key_Machete",
    label = "Machete's Keybind",
    default = "6",
    options = keyslist
  },
  {
    name = "Key_Pickaxe",
    label = "Pickaxe's Keybind",
    default = "2",
    options = keyslist
  },
  {
    name = "Key_Shovel",
    label = "Shovel's Keybind",
    default = "3",
    options = keyslist
  },
  {
    name = "Key_Hammer",
    label = "Hammer's Keybind",
    default = "4",
    options = keyslist
  },
  {
	  name = "Key_Pitchfork",
    label = "Pitchfork's Keybind",
    default = "5",
    options = keyslist
  },
  {
    name = "Key_Light",
    label = "Light Source's Keybind",
    default = "T",
    options = keyslist
  },
  {
    name = "Key_Cane",
    label = "Walking Cane's Keybind",
    default = "H",
    options = keyslist
  },
  {
    name = "Key_Weapon",
    label = "Weapon's Keybind",
    default = "G",
    options = keyslist
  },
  {
    name = "Key_Armor",
    label = "Armor's Keybind",
    default = "C",
    options = keyslist
  },
  {
    name = "Key_Helmet",
    label = "Helmet's Keybind",
    default = "V",
    options = keyslist
  },
  {
    name = "Letters",
    label = "Letters on Buttons",
    default = false,
    options = {
		{description = "NO", data = false},
		{description = "YES", data = true}
	}
  },
  {
    name = "Disable_Keys",
    label = "Disable Keybinds",
    default = false,
    options = {
		{description = "NO", data = false},
		{description = "YES", data = true}
	}
  },
  {
    name = "Disable_Buttons",
    label = "Disable Buttons",
    default = false,
    options = {
		{description = "NO", data = false},
		{description = "YES", data = true}
	}
  },
  {
    name = "Support_Archery",
    label = "Support Archery Mod",
    default = false,
    options = {
		{description = "NO", data = false},
		{description = "YES", data = true}
	}
  },
  {
    name = "Support_Scythes",
    label = "Support Scythes Mod",
    default = false,
    options = {
		{description = "NO", data = false},
		{description = "YES", data = true}
	}
  },
  {
    name = "Key_Scythe",
    label = "Scythe's Keybind",
    default = false,
    options = keyslist
  },
  {
    name = "Vertical_Offset",
    label = "Vertical Offset",
    default = 0,
    options = numbers
  },
  {
    name = "Key_Refresh",
    label = "Refresh Key",
    default = false,
    options = keyslist
  },
}
