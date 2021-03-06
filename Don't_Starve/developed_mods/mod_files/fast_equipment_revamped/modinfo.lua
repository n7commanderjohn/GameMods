name = "Fast Equipment Revamped / 快捷装备栏"
version = "1.55"
description = [[Hamlet update. Machetes will now be in equip bar for Hamlet and RoG - Hamlet compatible worlds. Most related Hamlet items added to hotkey bars.
Adds buttons over the inventory that give a fast access to the best main tools, weapons, armors, helmets and light resources.
Besides optionally adds keybinds for the mentioned tools. 
Version: ]]..version
-- + 
-- [[
-- 哈姆雷特更新！兼容哈姆雷特
-- 1.砍刀现在在哈姆雷特和巨人国中可以在装备栏装备。
-- 2.大多数哈姆雷特相关的项目可以添加到热键栏增加快捷按钮3.能够快速访问最好的主要工具，武器，盔甲，头盔和光源。4.可以给工具添加按键绑定。

-- Version: ]]..version
author = "IceGrog; N7 Commander John (Hamlet Update); 途安 (Chinese Localization)"
forumthread = "files/file/1992-fast-equipment-revamped/"
icon = "modicon.tex"
icon_atlas = "modicon.xml"

local forDST = false
if forDST then
    api_version = 10
else
    api_version = 6
end

dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true
hamlet_compatible = true

--This lets the clients know that they need to download the mod before they can join a server that is using it.
all_clients_require_mod = false

--This let's the game know that this mod doesn't need to be listed in the server's mod listing
client_only_mod = true

--Let the mod system know that this mod is functional with Don't Starve Together
dst_compatible = true

--These tags allow the server running this mod to be found with filters from the server listing screen
server_filter_tags = {"fast equipment", "fast", "equipment"}

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

keyslist[37] = {description = "DISABLED / 禁用", data = false}

numbers = {}
for i = 0, 5 do
  numbers[i+1] = {description = i, data = i}
end

configuration_options = {
  {
    name = "Key_Axe",
    label = "Axe / 斧头按键",
    default = "1",
    options = keyslist
  },
  {
    name = "Halberd_Category",
    label = "Halberd under Axe",
    hover = "If enabled, the Halberd will be considered an Axe for the Axe Keybind.",
    default = false,
    options = {
      {description = "NO", data = false},
      {description = "YES", data = true}
    }
  },
  {
    name = "Key_Machete",
    label = "Machete / 砍刀按键",
    default = "6",
    options = keyslist
  },
  {
    name = "Key_Pickaxe",
    label = "Pickaxe / 鹤嘴锄按键",
    default = "2",
    options = keyslist
  },
  {
    name = "Key_Shovel",
    label = "Shovel / 铲子按键",
    default = "3",
    options = keyslist
  },
  {
    name = "Key_Hammer",
    label = "Hammer / 锤子按键",
    default = "4",
    options = keyslist
  },
  {
    name = "Key_Pitchfork",
    label = "Pitchfork / 草叉按键",
    default = "5",
    options = keyslist
  },
  {
    name = "Key_Light",
    label = "Light / 光源按键",
    default = "X",
    options = keyslist
  },
  {
    name = "Key_Cane",
    label = "Cane / 行走手杖",
    default = "C",
    options = keyslist
  },
  {
    name = "Key_Weapon",
    label = "Weapon / 武器按键",
    default = "F",
    options = keyslist
  },
  {
    name = "Key_Armor",
    label = "Armor / 护甲按键",
    default = "V",
    options = keyslist
  },
  {
    name = "Key_Helmet",
    label = "Helmet / 头盔按键",
    default = "G",
    options = keyslist
  },
  {
    name = "Letters",
    label = "Label Buttons / 按钮显示",
    default = true,
    options = {
      {description = "NO", data = false},
      {description = "YES", data = true}
    }
  },
  {
    name = "Disable_Keys",
    label = "Disable Keybinds / 禁用快捷键",
    default = false,
    options = {
      {description = "NO", data = false},
      {description = "YES", data = true}
    }
  },
  {
    name = "Disable_Buttons",
    label = "Disable Buttons / 禁用按键",
    default = false,
    options = {
      {description = "NO", data = false},
      {description = "YES", data = true}
    }
  },
  {
    name = "Support_Archery",
    label = "Support Archery Mod / 支持弓箭模组",
    default = false,
    options = {
      {description = "NO", data = false},
      {description = "YES", data = true}
    }
  },
  {
    name = "Support_Scythes",
    label = "Support Scythes Mod / 支持镰刀模组",
    default = false,
    options = {
      {description = "NO", data = false},
      {description = "YES", data = true}
    }
  },
  {
    name = "Key_Scythe",
    label = "Scythe / 镰刀按键",
    default = false,
    options = keyslist
  },
  {
    name = "Vertical_Offset",
    label = "Vertical Offset / 垂直偏移",
    default = 0,
    options = numbers
  },
  {
    name = "Key_Refresh",
    label = "Refresh Key / 刷新键",
    default = false,
    options = keyslist
  },
}
