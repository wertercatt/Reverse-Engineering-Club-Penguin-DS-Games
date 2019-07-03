local L0_0, L1_1
L0_0 = {}
_const = L0_0
L0_0 = {}
_id = L0_0
L0_0 = {}
_coroutines = L0_0
L0_0 = {}
_text = L0_0
L0_0 = {}
function L1_1(A0_2, A1_3)
  return A1_3
end
L0_0.__index = L1_1
function L1_1(A0_4, A1_5, A2_6)
  error("write to _text." .. A1_5 .. " with " .. A2_6)
end
L0_0.__newindex = L1_1
L1_1 = setmetatable
L1_1(_text, L0_0)
L0_0 = {}
function L1_1(A0_7, A1_8)
  return ENUM(A1_8)
end
L0_0.__index = L1_1
function L1_1(A0_9, A1_10, A2_11)
  error("write to _const." .. A1_10 .. " with " .. A2_11)
end
L0_0.__newindex = L1_1
L1_1 = setmetatable
L1_1(_const, L0_0)
L1_1 = setmetatable
L1_1(_id, L0_0)
L1_1 = {}
function L1_1.__index(A0_12, A1_13)
  error("cannot find _util." .. A1_13)
end
function L1_1.__newindex(A0_14, A1_15, A2_16)
  error("write to _util." .. A1_15 .. " with " .. A2_16)
end
setmetatable(_util, L1_1)
function L0_0(A0_17)
  local L1_18
  L1_18 = addCoroutine
  L1_18(coroutine.create(A0_17))
end
scriptPlay = L0_0
function L0_0()
  coroutine.yield(1)
end
scriptWait = L0_0
function L0_0(A0_19)
  print("LUA: adding coroutine:", A0_19)
  table.insert(_coroutines, A0_19)
end
addCoroutine = L0_0
function L0_0()
  local L0_20, L1_21, L2_22, L3_23, L4_24, L5_25, L6_26
  for L3_23, L4_24 in L0_20(L1_21) do
    L5_25 = _util
    L5_25 = L5_25.IsPaused
    L5_25 = L5_25()
    if not L5_25 then
      L5_25 = coroutine
      L5_25 = L5_25.status
      L6_26 = L4_24
      L5_25 = L5_25(L6_26)
      L5_25 = L5_25 ~= "dead"
      if L5_25 then
        L6_26 = nil
        L6_26, L5_25 = coroutine.resume(L4_24)
      end
      if not L5_25 then
        L6_26 = print
        L6_26("LUA: removing coroutine:", L4_24)
        L6_26 = _coroutines
        L6_26[L3_23] = nil
      end
    end
  end
end
runCoroutines = L0_0
function L0_0()
  local L0_27, L1_28, L2_29, L3_30, L4_31
  for L3_30, L4_31 in L0_27(L1_28) do
    print("LUA: removing coroutine:", L4_31)
    _coroutines[L3_30] = nil
  end
end
clearCoroutines = L0_0
function L0_0(A0_32, A1_33, A2_34)
  local L3_35, L4_36
  L3_35 = _util
  L3_35 = L3_35.GetSelf
  L3_35 = L3_35()
  function L4_36()
    _util.SetSuitcaseItemEnabled(_UPVALUE0_, true)
    _util.DisplayPopUp(_UPVALUE1_, _UPVALUE2_, "GameStrings")
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.SetSpawn(0, _UPVALUE3_)
    _util.DelItem(_UPVALUE3_)
  end
  scriptPlay(L4_36)
end
awardClothingItem = L0_0
function L0_0()
  if _util.GetNumSnakePieces() == 1 then
    _util.StartCutscene(_const.FOUNDSNAKEPIECE1)
  elseif _util.GetNumSnakePieces() == 2 then
    _util.StartCutscene(_const.FOUNDSNAKEPIECE2)
  elseif _util.GetNumSnakePieces() == 3 then
    _util.StartCutscene(_const.FOUNDSNAKEPIECE3)
  elseif _util.GetNumSnakePieces() == 4 then
    _util.StartCutscene(_const.FOUNDSNAKEPIECE4)
  elseif _util.GetNumSnakePieces() == 5 then
    _util.StartCutscene(_const.FOUNDSNAKEPIECE5)
  elseif _util.GetNumSnakePieces() == 6 then
    _util.StartCutscene(_const.FOUNDSNAKEPIECE6)
  end
end
startCorrectSnakePieceCutscene = L0_0
function L0_0(A0_37, A1_38)
  if A0_37 == 1 then
    if _util.GetVar("M1_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M1_spring, _text.M1_spring)
      _util.SetItemPopUpText(_id.M1_bucket, _text.M1_bucket)
      _util.SetItemPopUpText(_id.M1_rope, _text.M1_rope)
      _util.SetItemPopUpText(_id.M1_TC_anchor, _text.M1_TC_anchor)
      _util.SetItemPopUpText(_id.C1_SpringNBucket, _text.C1_SpringNBucket)
      _util.SetItemPopUpText(_id.C1_RopeNAnchor, _text.C1_GrapplingHook)
      _util.SetItemPopUpText(_id.C1_GrapplingHook, _text.C1_GrapplingHook)
      _util.SetItemPopUpText(_id.C1_InventoryItem_JetPack, _text.C1_InventoryItem_JetPack)
      _util.SetItemPopUpText(_id.C1_InventoryItem_JetPackNStick, _text.C1_InventoryItem_JetPackNStick)
      _util.SetItemPopUpText(_id.C1_InventoryItem_FishOnStick, _text.C1_InventoryItem_FishOnStick)
      _util.SetItemPopUpText(_id.C1_InventoryItem_String, _text.C1_InventoryItem_String)
      _util.SetItemPopUpText(_id.C1_InventoryItem_JetPackNStickComplete, _text.C1_InventoryItem_JetPackNStickComplete)
      _util.SetItemPopUpText(_id.C1_InventoryItem_JackHammer, _text.C1_JACKHAMMER)
      _util.SetItemPopUpText(_id.C1_InventoryItem_DirtyJackHammerParts, _text.C1_JACKHAMMER_DIRTY)
      _util.SetVar("M1_ITEM_SETUP", 1)
    end
  elseif A0_37 == 2 then
    if _util.GetVar("M2_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M5_InventoryGoggles, _text.M5_ITEM_GOGGLES)
      _util.SetItemPopUpText(_id.M5_InventoryTrap, _text.M5_ITEM_TRAP)
      _util.SetItemPopUpText(_id.M8_BeachNet, _text.M5_ITEM_NET)
      _util.SetItemPopUpText(_id.M5_InventoryNet, _text.M5_ITEM_NET)
      _util.SetItemPopUpText(30940, _text.M5_ITEM_NET)
      _util.SetItemPopUpText(_id.M5_InventoryRope, _text.M5_ITEM_ROPE)
      _util.SetItemPopUpText(_id.M5_HotSauce, _text.M5_ITEM_HOTSAUCE)
      _util.SetItemPopUpText(_id.M5_ChocolateSauce, _text.M5_ITEM_CHOCOLATESAUCE)
      _util.SetItemPopUpText(_id.M5_InventoryFuel, _text.M5_ITEM_INVFUEL)
      _util.SetItemPopUpText(_id.M5_FuelBeach, _text.M5_ITEM_INVFUEL)
      _util.SetItemPopUpText(_id.M5_InventoryFan, _text.M5_ITEM_INVVACUUM)
      _util.SetItemPopUpText(_id.M5_InventoryEmptyCup, _text.M5_ITEM_INVEMPTYCUP)
      _util.SetItemPopUpText(_id.M5_HotChocolate, _text.M5_ITEM_HOTCHOCOLATE)
      _util.SetItemPopUpText(_id.M5_Candle, _text.M5_ITEM_CANDLE)
      _util.SetItemPopUpText(_id.M5_KluztyInventory, _text.M5_ITEM_KLUTZYINV)
      _util.SetItemPopUpText(_id.M5_CleanFur, _text.M5_ITEM_CLEANFUR)
      _util.SetItemPopUpText(_id.M5_DirtyFur, _text.M5_ITEM_DIRTYFUR)
      _util.SetItemPopUpText(_id.M5_PizzaBox, _text.M5_ITEM_PIZZABOX)
      _util.SetItemPopUpText(_id.M2_JackHammer, _text.NEW_INV_JACKHAMMER)
      _util.SetVar("M2_ITEM_SETUP", 1)
    end
  elseif A0_37 == 3 then
    if _util.GetVar("M3_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M6_MeatPizza, _text.M6_ITEM_MEATPIZZA)
      _util.SetItemPopUpText(_id.M6_SeaweedPizza, _text.M6_ITEM_SEAWEEDPIZZA)
      _util.SetItemPopUpText(_id.M6_CandyPizza, _text.M6_ITEM_CANDYPIZZA)
      _util.SetItemPopUpText(_id.M6_GrapplingHook, _text.M6_ITEM_GRAPPLINGHOOK)
      _util.SetItemPopUpText(_id.M6_HotSauce, _text.M6_ITEM_HOTSAUCE)
      _util.SetItemPopUpText(_id.M5_OberryBag, _text.M6_ITEM_OBERRYBAG)
      _util.SetItemPopUpText(_id.M6_RopeA, _text.M6_ITEM_ROPE)
      _util.SetItemPopUpText(_id.M6_RopeB, _text.M6_ITEM_ROPE)
      _util.SetItemPopUpText(_id.M6_HotOberry, _text.M6_ITEM_HOTOBERRY)
      _util.SetItemPopUpText(_id.M6_Blueprint, _text.C2_BLUEPRINT_PIECE)
      _util.SetItemPopUpText(_id.M6_Anchor, _text.M6_ITEM_ANCHOR)
      _util.SetItemPopUpText(_id.M2_JackHammer, _text.NEW_INV_JACKHAMMER)
      _util.SetVar("M3_ITEM_SETUP", 1)
    end
  elseif A0_37 == 4 then
    if _util.GetVar("M4_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.Inventory_PropellorHat, _text.M8_ITEM_PROPELLORHAT)
      _util.SetItemPopUpText(_id.Inventory_Cookie, _text.M8_ITEM_COOKIE)
      _util.SetItemPopUpText(_id.M8_InvLantern_Off, _text.M8_ITEM_LANTERNOFF)
      _util.SetItemPopUpText(_id.M8_InvLantern_On, _text.M8_ITEM_LANTERNON)
      _util.SetItemPopUpText(_id.M8_BeachNet, _text.M8_ITEM_NET)
      _util.SetItemPopUpText(_id.Inventory_PegsA, _text.M8_ITEM_PEGS)
      _util.SetItemPopUpText(_id.Inventory_PegsB, _text.M8_ITEM_PEGS)
      _util.SetItemPopUpText(_id.Inventory_Balloon, _text.M8_ITEM_BALLOON)
      _util.SetItemPopUpText(_id.Inventory_Hammer, _text.M8_ITEM_HAMMER)
      _util.SetItemPopUpText(_id.Inventory_MapLeft, _text.M8_ITEM_MAPLEFT)
      _util.SetItemPopUpText(_id.Inventory_MapRight, _text.M8_ITEM_MAPRIGHT)
      _util.SetItemPopUpText(_id.Inventory_MapComp, _text.M8_ITEM_MAPCOMPLETE)
      _util.SetItemPopUpText(_id.Inventory_BalloonBox, _text.M8_ITEM_BALLOONBOX)
      _util.SetItemPopUpText(_id.Inventory_Helium, _text.M8_ITEM_SUPERHELIUM)
      _util.SetItemPopUpText(_id.Inventory_Barrel, _text.M8_ITEM_BARREL)
      _util.SetItemPopUpText(_id.M8_VaultDoor, _text.M8_VAULTDOOR)
      _util.SetItemPopUpText(_id.M8_PizzaBox, _text.M8_ITEM_PIZZABOX)
      _util.SetVar("M4_ITEM_SETUP", 1)
    end
  elseif A0_37 == 5 then
    if _util.GetVar("M5_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M9_Receiver1, _text.M9_ITEM_RECEIVER)
      _util.SetItemPopUpText(_id.M9_Receiver2, _text.M9_ITEM_RECEIVER)
      _util.SetItemPopUpText(_id.M9_Receiver3, _text.M9_ITEM_RECEIVER)
      _util.SetItemPopUpText(_id.M9_DuckDeflated, _text.M9_ITEM_DUCKDEFLATED)
      _util.SetItemPopUpText(_id.M9_MineCartReceiver, _text.M9_ITEM_CARTRECEIVER)
      _util.SetItemPopUpText(_id.M9_KiteReceiver, _text.M9_ITEM_KITERECEIVER)
      _util.SetItemPopUpText(_id.M9_DuckReceiver, _text.M9_ITEM_DUCKRECEIVER)
      _util.SetItemPopUpText(_id.M9_Gum, _text.M9_ITEM_GUM)
      _util.SetItemPopUpText(_id.M9_Pump, _text.M9_ITEM_PUMP)
      _util.SetItemPopUpText(_id.M9_DuckPatched, _text.M9_ITEM_DUCKPATCHED)
      _util.SetItemPopUpText(_id.M9_DuckInflated, _text.M9_ITEM_DUCKINFLATED)
      _util.SetItemPopUpText(_id.M9_StickA, _text.M9_ITEM_STICK)
      _util.SetItemPopUpText(_id.M9_StickB, _text.M9_ITEM_STICK)
      _util.SetItemPopUpText(_id.M9_KiteStick, _text.M9_ITEM_KITESTICK)
      _util.SetItemPopUpText(_id.M9_KiteString, _text.M9_ITEM_KITESTRING)
      _util.SetItemPopUpText(_id.M9_KiteBlueprint, _text.M9_ITEM_KITEBLUEPRINTS)
      _util.SetItemPopUpText(_id.ConnectFourCombine, _text.M9_ITEM_CFOUR_PIECE)
      _util.SetItemPopUpText(_id.M9_ConnectFourHalf, _text.M9_ITEM_CFOUR_HALF)
      _util.SetItemPopUpText(_id.M9_ConnectFourFull, _text.M9_ITEM_CFOUR_FULL)
      _util.SetItemPopUpText(_id.M9_ConnectFour0, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_ConnectFour1, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_ConnectFour2, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_ConnectFour3, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_ConnectFour4, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_ConnectFour5, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_ConnectFour6, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_ConnectFour7, _text.M9_CONNECT_FOUR_PIECE2)
      _util.SetItemPopUpText(_id.M9_String, _text.M9_LODGE_STRING)
      _util.SetItemPopUpText(_id.M9_SpyCamera, _text.M9_ITEM_SPYCAMERA)
      _util.SetItemPopUpText(_id.M9_SpyCameraPhone, _text.M9_ITEM_SPYCAMERAPHONE)
      _util.SetItemPopUpText(_id.M9_HerbsPhone, _text.M9_ITEM_HERBSPHONE)
      _util.SetVar("M5_ITEM_SETUP", 1)
    end
  elseif A0_37 == 6 then
    if _util.GetVar("M6_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M10_Rope, _text.M10_ITEM_ROPE)
      _util.SetItemPopUpText(_id.M10_Soda, _text.M10_ITEM_SODA)
      _util.SetItemPopUpText(_id.M10_ClothesInventory, _text.M10_ITEM_CLOTHES)
      _util.SetItemPopUpText(_id.M10_TableInventory, _text.M10_ITEM_TABLE)
      _util.SetItemPopUpText(_id.M10_BoxInventory, _text.M10_ITEM_BOX)
      _util.SetItemPopUpText(_id.M10_SolarPanelInv, _text.M10_ITEM_SOLARPANEL)
      _util.SetItemPopUpText(_id.M10_JetPackInventory, _text.M10_ITEM_JETPACK)
      _util.SetItemPopUpText(_id.M10_Rope, _text.M10_ITEM_ROPE)
      _util.SetVar("M6_ITEM_SETUP", 1)
    end
  elseif A0_37 == 7 then
    if _util.GetVar("M7_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M11_KernelClue1, _text.M11_KernelClue1)
      _util.SetItemPopUpText(_id.M11_KernelClue2, _text.M11_KernelClue2)
      _util.SetItemPopUpText(_id.M11_AllKernelClues, _text.M11_AllKernelClues)
      _util.SetItemPopUpText(_id.M11_Plank, _text.M11_Plank)
      _util.SetItemPopUpText(_id.M11_Marbles1, _text.M11_Marbles1)
      _util.SetItemPopUpText(_id.M11_Marbles2, _text.M11_Marbles2)
      _util.SetItemPopUpText(_id.M11_DVDsInBox, _text.M11_DVDsInBox)
      _util.SetItemPopUpText(_id.M11_DVDs, _text.M11_DVDs)
      _util.SetItemPopUpText(_id.M11_DVDs2, _text.M11_DVDs2)
      _util.SetItemPopUpText(_id.M11_MancalaBoard, _text.M11_MANCALA_NOMARBS)
      _util.SetItemPopUpText(_id.M11_MancalawMarb, _text.M11_MANCALA_WMARBS)
      _util.SetItemPopUpText(_id.M11_EmptyBox, _text.M11_ITEM_DVDBOX)
      _util.SetVar("M7_ITEM_SETUP", 1)
    end
  elseif A0_37 == 8 then
    if _util.GetVar("M8_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.C2_Camera, _text.C2_CAMERA)
      _util.SetItemPopUpText(_id.C2_bluePrintStack1, _text.C2_BLUEPRINT_PIECE)
      _util.SetItemPopUpText(_id.C2_bluePrintStack2, _text.C2_BLUEPRINT_PIECE)
      _util.SetItemPopUpText(_id.C2_bluePrintStack3, _text.C2_BLUEPRINT_PIECE)
      _util.SetItemPopUpText(_id.C2_Blueprint, _text.C2_BLUEPRINT_COMPLETED)
      _util.SetItemPopUpText(_id.C2_Blueprint2, _text.C2_SECOND_BLUEPRINT)
      _util.SetItemPopUpText(_id.C2_3x3Grid, _text.C2_KEYPAD_CODE)
      _util.SetItemPopUpText(_id.C2_HKEY2, _text.C2_KEY)
      _util.SetItemPopUpText(_id.C2_HKEY3, _text.C2_KEY)
      _util.SetItemPopUpText(_id.C2_HKEY4, _text.C2_KEY)
      _util.SetItemPopUpText(_id.C2_HatchKey, _text.C2_ITEM_DOORMATKEY)
      _util.SetVar("M8_ITEM_SETUP", 1)
    end
  elseif A0_37 == 9 then
    if _util.GetVar("M9_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.C3_PropellerBladeStack_1, _text.C3_PROPELLOR_BLADE)
      _util.SetItemPopUpText(_id.C3_PropellerBladeStack_2, _text.C3_PROPELLOR_BLADE)
      _util.SetItemPopUpText(_id.C3_PropellerBladeStack_3, _text.C3_PROPELLOR_BLADE)
      _util.SetItemPopUpText(_id.C3_PropellerBladeStack_4, _text.C3_PROPELLOR_BLADE)
      _util.SetItemPopUpText(_id.C3_BrokePropeller, _text.C3_PROPELLOR_CORE)
      _util.SetItemPopUpText(_id.C3_CombinedPropeller, _text.C3_PROPELLOR_FIXED)
      _util.SetItemPopUpText(_id.C3_FishingPole, _text.C3_FISHING_POLE)
      _util.SetItemPopUpText(_id.C3_RookiesHat, _text.C3_ROOKIE_HAT)
      _util.SetItemPopUpText(_id.C3_CR_TrackingDevice, _text.C3_TRACKING_DEVICE)
      _util.SetItemPopUpText(_id.C3_CR_Grappling, _text.C3_GRAPPLING_HOOK)
      _util.SetItemPopUpText(_id.C3_IceBricks_1, _text.C3_ICE_BRICK)
      _util.SetItemPopUpText(_id.C3_IceBricks_2, _text.C3_ICE_BRICK)
      _util.SetItemPopUpText(_id.C3_IceBricks_3, _text.C3_ICE_BRICK)
      _util.SetItemPopUpText(_id.C3_IceBricks_4, _text.C3_ICE_BRICK)
      _util.SetItemPopUpText(_id.C3_IceBricks_5, _text.C3_ICE_BRICK)
      _util.SetItemPopUpText(_id.C3_CR_HeadGear, _text.C3_HEADGEAR)
      _util.SetItemPopUpText(_id.C3_JackHammer, _text.NEW_INV_JACKHAMMER)
      _util.SetVar("M9_ITEM_SETUP", 1)
    end
  elseif A0_37 == 10 and _util.GetVar("M10_ITEM_SETUP") == 0 then
    _util.SetItemPopUpText(_id.C4_InventoryItem_LifePreserver, _text.C4_LIFEPRESERVER)
    _util.SetItemPopUpText(_id.C4_InventoryItem_WaterWings, _text.C4_WATER_SURVIVAL_GEAR)
    _util.SetItemPopUpText(_id.C4_InventoryItem_LifeJacket, _text.C4_WATER_SURVIVAL_GEAR)
    _util.SetItemPopUpText(_id.C4_InventoryItem_Duck4Herb, _text.C4_WATER_SURVIVAL_GEAR)
    _util.SetItemPopUpText(_id.C4_InventoryItem_RubberDucky, _text.C4_RUBBER_DUCK)
    _util.SetItemPopUpText(_id.C4_InventoryItem_OctoFloat, _text.C4_DOJO_OCTOPUS)
    _util.SetItemPopUpText(_id.C4_InventoryItem_FestivalFloat, _text.C4_ATTIC_BALLOON)
    _util.SetItemPopUpText(_id.C4_InventoryItem_WhaleFloat, _text.C4_WHALE)
    _util.SetItemPopUpText(_id.C4_InventoryItem_Tape, _text.C4_LODGE_TAPE)
    _util.SetItemPopUpText(_id.C4_InventoryItem_BallonFixed, _text.C4_SKIVILLAGE_HBALLOON_TAPE)
    _util.SetItemPopUpText(_id.C4_InventoryItem_SuperHelium, _text.C4_SUPER_HELIUM)
    _util.SetItemPopUpText(_id.C4_InventoryItem_BallonTorn, _text.C4_SKIVILLAGE_HBALLOON_ITEM)
    _util.SetItemPopUpText(_id.C4_InventoryItem_BallonFilled, _text.C4_SKIVILLAGE_HBALLOON_COMPLETE)
    _util.SetItemPopUpText(_id.C4_Dot_DisguiseSack_Empty, _text.C4_EMPTY_SACK)
    _util.SetItemPopUpText(_id.C4_Dot_DisguiseSack_1_3, _text.C4_SACK_ITEM1)
    _util.SetItemPopUpText(_id.C4_Dot_DisguiseSack_2_3, _text.C4_SACK_ITEM2)
    _util.SetItemPopUpText(_id.C4_Dot_DisguiseSack_Full, _text.C4_SACK_ITEM3)
    _util.SetItemPopUpText(_id.C4_InventoryItem_WhiteBeard, _text.C4_SANTA_BEARD)
    _util.SetItemPopUpText(_id.C4_InventoryItem_Wig, _text.C4_MOP_CUT)
    _util.SetItemPopUpText(_id.C4_InventoryItem_SenseiHat, _text.C4_PIZZA_PAN)
    _util.SetItemPopUpText(_id.C4_InventoryItem_BlackBeard, _text.C4_BLACK_BEARD)
    _util.SetVar("M10_ITEM_SETUP", 1)
  end
end
setupItems = L0_0
function L0_0(A0_39, A1_40)
end
spypodCheck = L0_0
function L0_0(A0_41, A1_42)
end
mapCheck = L0_0
function L0_0(A0_43, A1_44)
end
communicatorCheck = L0_0
function L0_0(A0_45, A1_46)
  local L2_47, L3_48
  L2_47 = 2 * A0_45
  L2_47 = L2_47 - 100
  L2_47 = -1 * L2_47
  L3_48 = 2 * A0_45
  L3_48 = L3_48 - 100
  L2_47 = L2_47 * L3_48
  L2_47 = L2_47 + 10000
  L2_47 = A1_46 * L2_47
  L2_47 = L2_47 / 10000
  return L2_47
end
movementCurve = L0_0
function L0_0(A0_49, A1_50, A2_51, A3_52, A4_53, A5_54, A6_55)
  local L7_56, L8_57, L9_58, L10_59
  L7_56 = _util
  L7_56 = L7_56.IsCommandCoachActive
  L7_56 = L7_56()
  if L7_56 then
    return
  end
  L7_56 = _util
  L7_56 = L7_56.SetPuffleX
  L8_57 = A0_49
  L7_56(L8_57)
  L7_56 = _util
  L7_56 = L7_56.SetPuffleY
  L8_57 = A1_50
  L7_56(L8_57)
  L7_56 = 0
  L8_57 = A2_51 - A0_49
  L9_58 = A3_52 - A1_50
  if A5_54 == nil then
    A5_54 = false
  end
  if A6_55 == nil then
    A6_55 = 50
  end
  repeat
    L10_59 = L7_56 * 100
    L10_59 = L10_59 / A4_53
    _util.SetPuffleX(A0_49 + L8_57 * L10_59 / 100)
    _util.SetPuffleY(A1_50 + L9_58 * L10_59 / 100 - (A5_54 == true and movementCurve(L10_59, A6_55) or 0))
    L7_56 = L7_56 + 1
    scriptWait()
  until A4_53 < L7_56
end
movePuffle = L0_0
L0_0 = ADDENUM
L1_1 = "Inventory_MechanoDuster"
L0_0(L1_1, 1000000)
L0_0 = ADDENUM
L1_1 = "Inventory_DecoderSpypod"
L0_0(L1_1, 1000001)
L0_0 = ADDENUM
L1_1 = "Inventory_ScissorsTool"
L0_0(L1_1, 1000002)
L0_0 = ADDENUM
L1_1 = "Inventory_SpyFlashlight"
L0_0(L1_1, 1000003)
L0_0 = ADDENUM
L1_1 = "Inventory_CombTool"
L0_0(L1_1, 1000005)
L0_0 = ADDENUM
L1_1 = "Inventory_WrenchTool"
L0_0(L1_1, 1000004)
L0_0 = ADDENUM
L1_1 = "Inventory_PuffleBlue"
L0_0(L1_1, 2000000)
L0_0 = ADDENUM
L1_1 = "Inventory_PuffleRed"
L0_0(L1_1, 2000001)
L0_0 = ADDENUM
L1_1 = "Inventory_PuffleBlack"
L0_0(L1_1, 2000002)
L0_0 = ADDENUM
L1_1 = "Inventory_PufflePurple"
L0_0(L1_1, 2000003)
L0_0 = ADDENUM
L1_1 = "Inventory_PufflePink"
L0_0(L1_1, 2000004)
L0_0 = ADDENUM
L1_1 = "Inventory_PuffleGreen"
L0_0(L1_1, 2000005)
L0_0 = ADDENUM
L1_1 = "Inventory_PuffleYellow"
L0_0(L1_1, 2000006)
L0_0 = ADDENUM
L1_1 = "Inventory_PuffleWhite"
L0_0(L1_1, 2000007)
L0_0 = ADDENUM
L1_1 = "Inventory_PuffleKlutzy"
L0_0(L1_1, 2000008)
L0_0 = ADDENUM
L1_1 = "Inventory_NoPuffle"
L0_0(L1_1, 2000009)
L0_0 = ADDENUM
L1_1 = "Enable_PuffleBlue"
L0_0(L1_1, 1)
L0_0 = ADDENUM
L1_1 = "Enable_PuffleRed"
L0_0(L1_1, 2)
L0_0 = ADDENUM
L1_1 = "Enable_PuffleBlack"
L0_0(L1_1, 4)
L0_0 = ADDENUM
L1_1 = "Enable_PufflePurple"
L0_0(L1_1, 8)
L0_0 = ADDENUM
L1_1 = "Enable_PufflePink"
L0_0(L1_1, 16)
L0_0 = ADDENUM
L1_1 = "Enable_PuffleGreen"
L0_0(L1_1, 32)
L0_0 = ADDENUM
L1_1 = "Enable_PuffleYellow"
L0_0(L1_1, 64)
L0_0 = ADDENUM
L1_1 = "Enable_PuffleWhite"
L0_0(L1_1, 128)
L0_0 = ADDENUM
L1_1 = "Enable_PuffleKlutzy"
L0_0(L1_1, 256)
L0_0 = ADDENUM
L1_1 = "Enable_NoPuffle"
L0_0(L1_1, 512)
L0_0 = ADDENUM
L1_1 = "Inventory_Spypod"
L0_0(L1_1, 2500000)
L0_0 = ADDENUM
L1_1 = "SuitCase_CrabCostume"
L0_0(L1_1, 4111)
L0_0 = ADDENUM
L1_1 = "SnowForts_ClockGearsLeft"
L0_0(L1_1, 6656)
L0_0 = ADDENUM
L1_1 = "SnowForts_ClockGearsRight"
L0_0(L1_1, 40655)
L0_0 = ADDENUM
L1_1 = "Screen_CR"
L0_0(L1_1, 31806)
L0_0 = ADDENUM
L1_1 = "ScreenOn_CR"
L0_0(L1_1, 32089)
L0_0 = ADDENUM
L1_1 = "BoomBox_GR"
L0_0(L1_1, 33545)
L0_0 = ADDENUM
L1_1 = "BoomBox_GR1"
L0_0(L1_1, 54032)
L0_0 = ADDENUM
L1_1 = "Balloon_GR"
L0_0(L1_1, 407)
L0_0 = ADDENUM
L1_1 = "Balloon_GR1"
L0_0(L1_1, 53779)
L0_0 = ADDENUM
L1_1 = "SportShop_Wardrobe"
L0_0(L1_1, 41461)
L0_0 = ADDENUM
L1_1 = "DecoderStation"
L0_0(L1_1, 34699)
L0_0 = ADDENUM
L1_1 = "FP_CartHard"
L0_0(L1_1, 35617)
L0_0 = ADDENUM
L1_1 = "FP_CartEasy"
L0_0(L1_1, 35625)
L0_0 = ADDENUM
L1_1 = "FP_SnowboardPenguin"
L0_0(L1_1, 37597)
L0_0 = ADDENUM
L1_1 = "FP_FakeStageDoorRight"
L0_0(L1_1, 39361)
L0_0 = ADDENUM
L1_1 = "FP_FakeStageDoorLeft"
L0_0(L1_1, 39414)
L0_0 = ADDENUM
L1_1 = "Doors_Beach2DockUL"
L0_0(L1_1, 5197)
L0_0 = ADDENUM
L1_1 = "Doors_Beach2Light"
L0_0(L1_1, 30925)
L0_0 = ADDENUM
L1_1 = "Doors_Beach2LightUL"
L0_0(L1_1, 5482)
L0_0 = ADDENUM
L1_1 = "Doors_Beach2SkiUL"
L0_0(L1_1, 5202)
L0_0 = ADDENUM
L1_1 = "Doors_Beacon2LightUL"
L0_0(L1_1, 10020)
L0_0 = ADDENUM
L1_1 = "Doors_Boiler2Pool"
L0_0(L1_1, 48043)
L0_0 = ADDENUM
L1_1 = "NewLobbyDoortoCR"
L0_0(L1_1, 50650)
L0_0 = ADDENUM
L1_1 = "Doors_Coffee2Town"
L0_0(L1_1, 31341)
L0_0 = ADDENUM
L1_1 = "Doors_Command2HQ"
L0_0(L1_1, 11765)
L0_0 = ADDENUM
L1_1 = "Doors_CaveIntDoor2WildCave"
L0_0(L1_1, 49695)
L0_0 = ADDENUM
L1_1 = "Doors_Dock2Beach"
L0_0(L1_1, 32583)
L0_0 = ADDENUM
L1_1 = "Doors_Dock2BeachUL"
L0_0(L1_1, 5672)
L0_0 = ADDENUM
L1_1 = "Doors_Dock2SkiUL"
L0_0(L1_1, 6126)
L0_0 = ADDENUM
L1_1 = "Doors_Dock2TownUL"
L0_0(L1_1, 5974)
L0_0 = ADDENUM
L1_1 = "Doors_Dojo2Level"
L0_0(L1_1, 33211)
L0_0 = ADDENUM
L1_1 = "Doors_Dojo2Puffle"
L0_0(L1_1, 32895)
L0_0 = ADDENUM
L1_1 = "Doors_Fishing2Lodge"
L0_0(L1_1, 232)
L0_0 = ADDENUM
L1_1 = "Doors_Gadget2HQ"
L0_0(L1_1, 229)
L0_0 = ADDENUM
L1_1 = "Doors_Garys2Sport"
L0_0(L1_1, 34076)
L0_0 = ADDENUM
L1_1 = "Doors_GiftShop2Office"
L0_0(L1_1, 203)
L0_0 = ADDENUM
L1_1 = "Doors_GiftShop2OfficeBroken"
L0_0(L1_1, 50547)
L0_0 = ADDENUM
L1_1 = "Doors_GiftShop2Town"
L0_0(L1_1, 50507)
L0_0 = ADDENUM
L1_1 = "Doors_GiftRoof2Office"
L0_0(L1_1, 51366)
L0_0 = ADDENUM
L1_1 = "Doors_HQ2Command"
L0_0(L1_1, 34627)
L0_0 = ADDENUM
L1_1 = "Doors_HQ2CommandAlternate"
L0_0(L1_1, 2943)
L0_0 = ADDENUM
L1_1 = "Doors_HQ2Gadget"
L0_0(L1_1, 2572)
L0_0 = ADDENUM
L1_1 = "Doors_HQ2SportUL"
L0_0(L1_1, 2827)
L0_0 = ADDENUM
L1_1 = "Doors_IceRink2SnowForts"
L0_0(L1_1, 46801)
L0_0 = ADDENUM
L1_1 = "Doors_Light2Beach"
L0_0(L1_1, 10382)
L0_0 = ADDENUM
L1_1 = "Doors_LodgeDoor2Fish"
L0_0(L1_1, 68118)
L0_0 = ADDENUM
L1_1 = "Doors_Lodge2SkiVillage"
L0_0(L1_1, 166)
L0_0 = ADDENUM
L1_1 = "Doors_MineCrash2MineInt"
L0_0(L1_1, 24680)
L0_0 = ADDENUM
L1_1 = "Doors_MineCrash2MineLair"
L0_0(L1_1, 24786)
L0_0 = ADDENUM
L1_1 = "Doors_MineInt2Minigame"
L0_0(L1_1, 24548)
L0_0 = ADDENUM
L1_1 = "Doors_MineInt2Pool"
L0_0(L1_1, 35332)
L0_0 = ADDENUM
L1_1 = "Doors_MineLair2Out"
L0_0(L1_1, 25508)
L0_0 = ADDENUM
L1_1 = "Doors_MineShack2MineShed"
L0_0(L1_1, 23504)
L0_0 = ADDENUM
L1_1 = "Doors_MineShack2MineInt"
L0_0(L1_1, 23084)
L0_0 = ADDENUM
L1_1 = "Doors_MineCrash2CornMaze"
L0_0(L1_1, 65645)
L0_0 = ADDENUM
L1_1 = "Doors_NightClub2Town"
L0_0(L1_1, 48422)
L0_0 = ADDENUM
L1_1 = "Doors_NightClub2Boiler"
L0_0(L1_1, 122147)
L0_0 = ADDENUM
L1_1 = "Doors_NightClubTremors2Boiler"
L0_0(L1_1, 344)
L0_0 = ADDENUM
L1_1 = "Doors_Puffle2Dojo"
L0_0(L1_1, 39883)
L0_0 = ADDENUM
L1_1 = "Doors_PuffleTraining"
L0_0(L1_1, 248546)
L0_0 = ADDENUM
L1_1 = "Doors_Pool2MineInt"
L0_0(L1_1, 47531)
L0_0 = ADDENUM
L1_1 = "Doors_SkiHill2Test"
L0_0(L1_1, 37643)
L0_0 = ADDENUM
L1_1 = "Doors_SkiHill2Wild"
L0_0(L1_1, 29010)
L0_0 = ADDENUM
L1_1 = "Doors_SkiVillage2BeachUL"
L0_0(L1_1, 4930)
L0_0 = ADDENUM
L1_1 = "Doors_SkiVillageFlood2Beach"
L0_0(L1_1, 120493)
L0_0 = ADDENUM
L1_1 = "Doors_SkiVillage2DockUL"
L0_0(L1_1, 4962)
L0_0 = ADDENUM
L1_1 = "Doors_SkiVillage2Dock"
L0_0(L1_1, 158539)
L0_0 = ADDENUM
L1_1 = "Doors_SkiVillageFlood2Dock"
L0_0(L1_1, 222016)
L0_0 = ADDENUM
L1_1 = "Doors_SkiVillage2SkiHillUL"
L0_0(L1_1, 4621)
L0_0 = ADDENUM
L1_1 = "Doors_SkiVillage2SportUL"
L0_0(L1_1, 5066)
L0_0 = ADDENUM
L1_1 = "Doors_Snow2IceUL"
L0_0(L1_1, 40708)
L0_0 = ADDENUM
L1_1 = "Doors_Snow2Plaza"
L0_0(L1_1, 40772)
L0_0 = ADDENUM
L1_1 = "Doors_Snow2PlazaUL"
L0_0(L1_1, 6648)
L0_0 = ADDENUM
L1_1 = "Doors_Snow2Town"
L0_0(L1_1, 40915)
L0_0 = ADDENUM
L1_1 = "Doors_Snow2TownUL"
L0_0(L1_1, 6368)
L0_0 = ADDENUM
L1_1 = "Doors_Sports2Garys"
L0_0(L1_1, 20564)
L0_0 = ADDENUM
L1_1 = "Doors_Sports2HQ"
L0_0(L1_1, 41427)
L0_0 = ADDENUM
L1_1 = "Doors_Sports2Ski"
L0_0(L1_1, 4067)
L0_0 = ADDENUM
L1_1 = "Doors_Stage2Plaza"
L0_0(L1_1, 48915)
L0_0 = ADDENUM
L1_1 = "Doors_Town2Dock"
L0_0(L1_1, 41979)
L0_0 = ADDENUM
L1_1 = "Doors_Town2DockUL"
L0_0(L1_1, 13879)
L0_0 = ADDENUM
L1_1 = "Doors_Town2Gift"
L0_0(L1_1, 6890)
L0_0 = ADDENUM
L1_1 = "Doors_Town2Night"
L0_0(L1_1, 107176)
L0_0 = ADDENUM
L1_1 = "Doors_Town2SnowUL"
L0_0(L1_1, 7037)
L0_0 = ADDENUM
L1_1 = "Doors_WildPuffle2Berry"
L0_0(L1_1, 45051)
L0_0 = ADDENUM
L1_1 = "Doors_WildPuffle2Cave"
L0_0(L1_1, 44748)
L0_0 = ADDENUM
L1_1 = "Doors_WildPuffle2Clearing"
L0_0(L1_1, 44591)
L0_0 = ADDENUM
L1_1 = "Doors_Wilderness2River_L"
L0_0(L1_1, 46051)
L0_0 = ADDENUM
L1_1 = "Doors_WildCaveDoor2CaveInt"
L0_0(L1_1, 45854)
L0_0 = ADDENUM
L1_1 = "Doors_WildRiverDoor2Berry"
L0_0(L1_1, 45493)
L0_0 = ADDENUM
L1_1 = "Doors_WildBerryDoor2River"
L0_0(L1_1, 44219)
L0_0 = ADDENUM
L1_1 = "Doors_C1_MetalBarDoor"
L0_0(L1_1, 155904)
L0_0 = ADDENUM
L1_1 = "Doors_C1_MetalWallDoor"
L0_0(L1_1, 7682)
L0_0 = ADDENUM
L1_1 = "Doors_C1_TrainingRoom"
L0_0(L1_1, 5139)
L0_0 = ADDENUM
L1_1 = "Doors_C1_HubRoom2River"
L0_0(L1_1, 239387)
L0_0 = ADDENUM
L1_1 = "Doors_C2_HerbsUndergroundBase"
L0_0(L1_1, 41277)
L0_0 = ADDENUM
L1_1 = "Doors_C2_HerbsDoor2Den"
L0_0(L1_1, 56276)
L0_0 = ADDENUM
L1_1 = "Doors_C2_HerbsDoor2Storage"
L0_0(L1_1, 55130)
L0_0 = ADDENUM
L1_1 = "Doors_C2_HerbsDoor2WorkShop"
L0_0(L1_1, 33032)
L0_0 = ADDENUM
L1_1 = "Doors_C2_Skylight"
L0_0(L1_1, 17925)
L0_0 = ADDENUM
L1_1 = "Doors_CommandRoom2GadgetRoom"
L0_0(L1_1, 22700)
L0_0 = ADDENUM
L1_1 = "Doors_WCave2WPuffle"
L0_0(L1_1, 45743)
L0_0 = ADDENUM
L1_1 = "Doors_WCave2WBerry"
L0_0(L1_1, 45051)
L0_0 = ADDENUM
L1_1 = "Doors_WCave2WClearing"
L0_0(L1_1, 44591)
L0_0 = ADDENUM
L1_1 = "DoorToSaveDot"
L0_0(L1_1, 3402)
L0_0 = ADDENUM
L1_1 = "TallestMtDoorToRookie"
L0_0(L1_1, 15425)
L0_0 = ADDENUM
L1_1 = "TallestMtDoorToJPG"
L0_0(L1_1, 239176)
L0_0 = ADDENUM
L1_1 = "CommandRoomToLobby"
L0_0(L1_1, 202964)
L0_0 = ADDENUM
L1_1 = "M2C3_MissionDoor"
L0_0(L1_1, 24109)
L0_0 = ADDENUM
L1_1 = "M8_Snowforts2Town"
L0_0(L1_1, 40766)
L0_0 = ADDENUM
L1_1 = "M8_Snowforts2TownTremors"
L0_0(L1_1, 6368)
L0_0 = ADDENUM
L1_1 = "M8_Dock2Town"
L0_0(L1_1, 32502)
L0_0 = ADDENUM
L1_1 = "M8_Dock2TownTremors"
L0_0(L1_1, 5974)
L0_0 = ADDENUM
L1_1 = "M8_Dock2UGGift0"
L0_0(L1_1, 32659)
L0_0 = ADDENUM
L1_1 = "M8_Dock2UGGift1"
L0_0(L1_1, 32354)
L0_0 = ADDENUM
L1_1 = "M8_Dock2UGGift2"
L0_0(L1_1, 32588)
L0_0 = ADDENUM
L1_1 = "Doors_Cornmaze2_1"
L0_0(L1_1, 4097)
L0_0 = ADDENUM
L1_1 = "Doors_Cornmaze2_2"
L0_0(L1_1, 188320)
L0_0 = ADDENUM
L1_1 = "GiftShop_VaultDoor"
L0_0(L1_1, 50585)
L0_0 = ADDENUM
L1_1 = "M1C1_CommandCoachCover"
L0_0(L1_1, 32206)
L0_0 = ADDENUM
L1_1 = "M1C1_CommandCoachOpen"
L0_0(L1_1, 32189)
L0_0 = ADDENUM
L1_1 = "M1C1_NPCCoach"
L0_0(L1_1, 32093)
L0_0 = ADDENUM
L1_1 = "C1_start"
L0_0(L1_1, 0)
L0_0 = ADDENUM
L1_1 = "C1_puffleIntro"
L0_0(L1_1, 1)
L0_0 = ADDENUM
L1_1 = "C1_pufflesUnlocked"
L0_0(L1_1, 2)
L0_0 = ADDENUM
L1_1 = "C1_directorChallenge"
L0_0(L1_1, 3)
L0_0 = ADDENUM
L1_1 = "C1_haveItems"
L0_0(L1_1, 4)
L0_0 = ADDENUM
L1_1 = "C1_madeShoes"
L0_0(L1_1, 5)
L0_0 = ADDENUM
L1_1 = "C1_crossedRiver"
L0_0(L1_1, 6)
L0_0 = ADDENUM
L1_1 = "C1_readyForBendItems"
L0_0(L1_1, 7)
L0_0 = ADDENUM
L1_1 = "C1_hasBendBarItems"
L0_0(L1_1, 8)
L0_0 = ADDENUM
L1_1 = "C1_bentDoorAttempted"
L0_0(L1_1, 9)
L0_0 = ADDENUM
L1_1 = "C1_bentDoorWon"
L0_0(L1_1, 10)
L0_0 = ADDENUM
L1_1 = "C1_TrainingCompleted"
L0_0(L1_1, 11)
L0_0 = ADDENUM
L1_1 = "C2_Intro"
L0_0(L1_1, 0)
L0_0 = ADDENUM
L1_1 = "C2_Briefed"
L0_0(L1_1, 1)
L0_0 = ADDENUM
L1_1 = "C2_FoundBluePrint"
L0_0(L1_1, 2)
L0_0 = ADDENUM
L1_1 = "C2_MeetAtForrest"
L0_0(L1_1, 3)
L0_0 = ADDENUM
L1_1 = "C2_SearchedCave"
L0_0(L1_1, 4)
L0_0 = ADDENUM
L1_1 = "C2_GotoHerbsOldBase"
L0_0(L1_1, 5)
L0_0 = ADDENUM
L1_1 = "C2_SearchHerbsOldBase"
L0_0(L1_1, 6)
L0_0 = ADDENUM
L1_1 = "C2_CombinedGridPaper"
L0_0(L1_1, 7)
L0_0 = ADDENUM
L1_1 = "C2_FoundFakeRock1"
L0_0(L1_1, 8)
L0_0 = ADDENUM
L1_1 = "C2_StoleHerbPlans"
L0_0(L1_1, 9)
L0_0 = ADDENUM
L1_1 = "C2_UnlockedWindow"
L0_0(L1_1, 10)
L0_0 = ADDENUM
L1_1 = "C2_EscapedHerbBase"
L0_0(L1_1, 11)
L0_0 = ADDENUM
L1_1 = "C2_FooledKlutzy"
L0_0(L1_1, 12)
L0_0 = ADDENUM
L1_1 = "M8_UGGiftSodaL"
L0_0(L1_1, 3501)
L0_0 = ADDENUM
L1_1 = "M8_UGGiftSodaR"
L0_0(L1_1, 256)
L0_0 = ADDENUM
L1_1 = "M8_SnakePiece"
L0_0(L1_1, 49532)
L0_0 = ADDENUM
L1_1 = "M8_snowFort_Paper"
L0_0(L1_1, 40462)
L0_0 = ADDENUM
L1_1 = "M8_TownTremors_Paper"
L0_0(L1_1, 252)
L0_0 = ADDENUM
L1_1 = "M8_LevelSelectLevelTown"
L0_0(L1_1, 1931)
L0_0 = ADDENUM
L1_1 = "M8_LevelSelectLevelTownTremors"
L0_0(L1_1, 1630)
L0_0 = ADDENUM
L1_1 = "M8_GaryGR"
L0_0(L1_1, 33384)
L0_0 = ADDENUM
L1_1 = "M8_GaryHQ"
L0_0(L1_1, 34763)
L0_0 = ADDENUM
L1_1 = "Inventory_PropellorHat"
L0_0(L1_1, 33723)
L0_0 = ADDENUM
L1_1 = "Inventory_Cookie"
L0_0(L1_1, 52)
L0_0 = ADDENUM
L1_1 = "Inventory_PegsA"
L0_0(L1_1, 41321)
L0_0 = ADDENUM
L1_1 = "Inventory_PegsB"
L0_0(L1_1, 96)
L0_0 = ADDENUM
L1_1 = "Inventory_Balloon"
L0_0(L1_1, 33568)
L0_0 = ADDENUM
L1_1 = "Inventory_Hammer"
L0_0(L1_1, 33599)
L0_0 = ADDENUM
L1_1 = "Inventory_MapLeft"
L0_0(L1_1, 39020)
L0_0 = ADDENUM
L1_1 = "Inventory_MapRight"
L0_0(L1_1, 411)
L0_0 = ADDENUM
L1_1 = "Inventory_MapComp"
L0_0(L1_1, 56773)
L0_0 = ADDENUM
L1_1 = "Inventory_BalloonBox"
L0_0(L1_1, 42265)
L0_0 = ADDENUM
L1_1 = "Inventory_Helium"
L0_0(L1_1, 33339)
L0_0 = ADDENUM
L1_1 = "Inventory_Barrel"
L0_0(L1_1, 42298)
L0_0 = ADDENUM
L1_1 = "Door_UGGift_GiftShop"
L0_0(L1_1, 41)
L0_0 = ADDENUM
L1_1 = "M8_KlutzyLantern"
L0_0(L1_1, 32441)
L0_0 = ADDENUM
L1_1 = "M8_GroundLantern"
L0_0(L1_1, 32526)
L0_0 = ADDENUM
L1_1 = "M8_InvLantern_Off"
L0_0(L1_1, 32501)
L0_0 = ADDENUM
L1_1 = "M8_InvLantern_On"
L0_0(L1_1, 32326)
L0_0 = ADDENUM
L1_1 = "M8_GaryHQWait"
L0_0(L1_1, 34586)
L0_0 = ADDENUM
L1_1 = "M8_DockHoleR"
L0_0(L1_1, 32612)
L0_0 = ADDENUM
L1_1 = "M8_DockHoleL"
L0_0(L1_1, 32459)
L0_0 = ADDENUM
L1_1 = "M8_HerbInHole"
L0_0(L1_1, 32704)
L0_0 = ADDENUM
L1_1 = "M8_Door2Tunnel"
L0_0(L1_1, 32659)
L0_0 = ADDENUM
L1_1 = "M8_KlutzyDocks"
L0_0(L1_1, 32751)
L0_0 = ADDENUM
L1_1 = "M8_HerbDocks"
L0_0(L1_1, 32310)
L0_0 = ADDENUM
L1_1 = "M8_DrillTR"
L0_0(L1_1, 32358)
L0_0 = ADDENUM
L1_1 = "M8_DrillBR"
L0_0(L1_1, 32742)
L0_0 = ADDENUM
L1_1 = "M8_DrillTL"
L0_0(L1_1, 32620)
L0_0 = ADDENUM
L1_1 = "M8_DrillBL"
L0_0(L1_1, 32715)
L0_0 = ADDENUM
L1_1 = "M8_TownNPC1"
L0_0(L1_1, 41606)
L0_0 = ADDENUM
L1_1 = "M8_TownNPC2"
L0_0(L1_1, 41682)
L0_0 = ADDENUM
L1_1 = "M8_TownNPC1Happy"
L0_0(L1_1, 41594)
L0_0 = ADDENUM
L1_1 = "M8_TownNPC2Happy"
L0_0(L1_1, 41655)
L0_0 = ADDENUM
L1_1 = "M8_DoorSnowF2Town"
L0_0(L1_1, 40766)
L0_0 = ADDENUM
L1_1 = "M8_DoorSnowF2TownTremors"
L0_0(L1_1, 6368)
L0_0 = ADDENUM
L1_1 = "M8_GiftOfficeWindow1"
L0_0(L1_1, 3133)
L0_0 = ADDENUM
L1_1 = "M8_GiftOfficeWindow2"
L0_0(L1_1, 95)
L0_0 = ADDENUM
L1_1 = "M8_BaristaSad"
L0_0(L1_1, 9)
L0_0 = ADDENUM
L1_1 = "M8_BaristaHappy"
L0_0(L1_1, 58889)
L0_0 = ADDENUM
L1_1 = "M8_GiftDoor2UG"
L0_0(L1_1, 249)
L0_0 = ADDENUM
L1_1 = "M8_GiftDoor2Town"
L0_0(L1_1, 60167)
L0_0 = ADDENUM
L1_1 = "M8_paperNPCPizza"
L0_0(L1_1, 39028)
L0_0 = ADDENUM
L1_1 = "M8_BarrelGift1"
L0_0(L1_1, 284)
L0_0 = ADDENUM
L1_1 = "M8_BeachNet"
L0_0(L1_1, 42325)
L0_0 = ADDENUM
L1_1 = "M8_UGDoortoBoiler"
L0_0(L1_1, 106)
L0_0 = ADDENUM
L1_1 = "M8_TownToGiftShop"
L0_0(L1_1, 211312)
L0_0 = ADDENUM
L1_1 = "M8_TOWN0_PuffleSad"
L0_0(L1_1, 41751)
L0_0 = ADDENUM
L1_1 = "M8_TOWN0_PuffleHappy"
L0_0(L1_1, 41580)
L0_0 = ADDENUM
L1_1 = "M8_TOWN0_PuffleHat"
L0_0(L1_1, 41770)
L0_0 = ADDENUM
L1_1 = "M8_TOWNTREMORS_PuffleSad"
L0_0(L1_1, 272)
L0_0 = ADDENUM
L1_1 = "M8_TOWNTREMORS_PuffleHappy"
L0_0(L1_1, 56588)
L0_0 = ADDENUM
L1_1 = "M8_TOWNTREMORS_PuffleHat"
L0_0(L1_1, 56741)
L0_0 = ADDENUM
L1_1 = "M8_TownGiftShopDropZone"
L0_0(L1_1, 41660)
L0_0 = ADDENUM
L1_1 = "M8_BalloonOnShop"
L0_0(L1_1, 41844)
L0_0 = ADDENUM
L1_1 = "M8_PizzaPickUp"
L0_0(L1_1, 38579)
L0_0 = ADDENUM
L1_1 = "M8_Town0_PaperGuy"
L0_0(L1_1, 39328)
L0_0 = ADDENUM
L1_1 = "M8_Town0_Paper"
L0_0(L1_1, 41937)
L0_0 = ADDENUM
L1_1 = "M8_TownTremors_PaperL"
L0_0(L1_1, 56468)
L0_0 = ADDENUM
L1_1 = "M8_KlutzyBR"
L0_0(L1_1, 61065)
L0_0 = ADDENUM
L1_1 = "M8_BeaconJetpack"
L0_0(L1_1, 42744)
L0_0 = ADDENUM
L1_1 = "M8_TallestMtnJetPack"
L0_0(L1_1, 49226)
L0_0 = ADDENUM
L1_1 = "M8_VaultDoor"
L0_0(L1_1, 60168)
L0_0 = ADDENUM
L1_1 = "M8_PizzaBox"
L0_0(L1_1, 38697)
L0_0 = ADDENUM
L1_1 = "M8_TownTremNPC1"
L0_0(L1_1, 358)
L0_0 = ADDENUM
L1_1 = "M8_Town_CookieSign"
L0_0(L1_1, 213220)
L0_0 = ADDENUM
L1_1 = "M8_SnakePiece2"
L0_0(L1_1, 45906)
L0_0 = ADDENUM
L1_1 = "M8_DrillWindowGround"
L0_0(L1_1, 60757)
L0_0 = ADDENUM
L1_1 = "M8_Docks_GiftSprite"
L0_0(L1_1, 112425)
L0_0 = ADDENUM
L1_1 = "M8_Docks_GiftSunkSprite"
L0_0(L1_1, 158314)
L0_0 = ADDENUM
L1_1 = "M8_UG_PipeoverDoor"
L0_0(L1_1, 44394)
L0_0 = ADDENUM
L1_1 = "M8_SnakePieceForM4"
L0_0(L1_1, 60352)
L0_0 = ADDENUM
L1_1 = "M5_PinkFurStuck"
L0_0(L1_1, 63449)
L0_0 = ADDENUM
L1_1 = "M5_Trap2"
L0_0(L1_1, 55680)
L0_0 = ADDENUM
L1_1 = "M5_Trap1"
L0_0(L1_1, 55647)
L0_0 = ADDENUM
L1_1 = "M5_KlutzyTrapped"
L0_0(L1_1, 55781)
L0_0 = ADDENUM
L1_1 = "M5_InventoryGoggles"
L0_0(L1_1, 33466)
L0_0 = ADDENUM
L1_1 = "M5_InventoryTrap"
L0_0(L1_1, 42489)
L0_0 = ADDENUM
L1_1 = "M5_InventoryNet"
L0_0(L1_1, 42021)
L0_0 = ADDENUM
L1_1 = "M5_InventoryRope"
L0_0(L1_1, 42426)
L0_0 = ADDENUM
L1_1 = "M5_Gary_Gadget"
L0_0(L1_1, 33467)
L0_0 = ADDENUM
L1_1 = "M5_Gary_GadgetEnd"
L0_0(L1_1, 33488)
L0_0 = ADDENUM
L1_1 = "Lighthouse_NPC1"
L0_0(L1_1, 42078)
L0_0 = ADDENUM
L1_1 = "Lighthouse_NPC2"
L0_0(L1_1, 42135)
L0_0 = ADDENUM
L1_1 = "M5_HotSauce"
L0_0(L1_1, 38724)
L0_0 = ADDENUM
L1_1 = "M5_FuelBeach"
L0_0(L1_1, 30902)
L0_0 = ADDENUM
L1_1 = "M5_ChocolateSauce"
L0_0(L1_1, 38736)
L0_0 = ADDENUM
L1_1 = "M5_InventoryFuel"
L0_0(L1_1, 42959)
L0_0 = ADDENUM
L1_1 = "M5_InventoryFan"
L0_0(L1_1, 33316)
L0_0 = ADDENUM
L1_1 = "M5_FanBeacon"
L0_0(L1_1, 42830)
L0_0 = ADDENUM
L1_1 = "M5_FuelBalloon"
L0_0(L1_1, 42945)
L0_0 = ADDENUM
L1_1 = "M5_Fisherman"
L0_0(L1_1, 55385)
L0_0 = ADDENUM
L1_1 = "M5_OpenPizza"
L0_0(L1_1, 55796)
L0_0 = ADDENUM
L1_1 = "M5_Shadow"
L0_0(L1_1, 55663)
L0_0 = ADDENUM
L1_1 = "M5_InventoryEmptyCup"
L0_0(L1_1, 62671)
L0_0 = ADDENUM
L1_1 = "M5_HotChocolate"
L0_0(L1_1, 62665)
L0_0 = ADDENUM
L1_1 = "M5_ChocoHole"
L0_0(L1_1, 62736)
L0_0 = ADDENUM
L1_1 = "M5_HotKnob"
L0_0(L1_1, 62648)
L0_0 = ADDENUM
L1_1 = "M5_ColdKnob"
L0_0(L1_1, 310)
L0_0 = ADDENUM
L1_1 = "M5_MilkPipe"
L0_0(L1_1, 157)
L0_0 = ADDENUM
L1_1 = "M5_Candle"
L0_0(L1_1, 46364)
L0_0 = ADDENUM
L1_1 = "M5_KluztyInventory"
L0_0(L1_1, 55498)
L0_0 = ADDENUM
L1_1 = "M5_CleanFur"
L0_0(L1_1, 55756)
L0_0 = ADDENUM
L1_1 = "M5_DirtyFur"
L0_0(L1_1, 33354)
L0_0 = ADDENUM
L1_1 = "M5_CleanAnalyze"
L0_0(L1_1, 63281)
L0_0 = ADDENUM
L1_1 = "M5_DirtyAnalyze"
L0_0(L1_1, 63350)
L0_0 = ADDENUM
L1_1 = "M5_SkiLodge_SofaNPC"
L0_0(L1_1, 46211)
L0_0 = ADDENUM
L1_1 = "M5_CocoaCup"
L0_0(L1_1, 62529)
L0_0 = ADDENUM
L1_1 = "M5_Analyzer1"
L0_0(L1_1, 33587)
L0_0 = ADDENUM
L1_1 = "M5_Analyzer2"
L0_0(L1_1, 33510)
L0_0 = ADDENUM
L1_1 = "M5_Analyzer3"
L0_0(L1_1, 33444)
L0_0 = ADDENUM
L1_1 = "M5_Analyzer4"
L0_0(L1_1, 33363)
L0_0 = ADDENUM
L1_1 = "M5_Trap"
L0_0(L1_1, 55725)
L0_0 = ADDENUM
L1_1 = "M5_goggleObject"
L0_0(L1_1, 33413)
L0_0 = ADDENUM
L1_1 = "M5_Analyz_Puffle"
L0_0(L1_1, 63479)
L0_0 = ADDENUM
L1_1 = "M5_Analyz_DFur"
L0_0(L1_1, 63192)
L0_0 = ADDENUM
L1_1 = "M5_Analyz_CFur"
L0_0(L1_1, 63355)
L0_0 = ADDENUM
L1_1 = "M5_PizzaChef"
L0_0(L1_1, 38548)
L0_0 = ADDENUM
L1_1 = "M5_PizzaMess1"
L0_0(L1_1, 38756)
L0_0 = ADDENUM
L1_1 = "M5_PizzaMess2"
L0_0(L1_1, 38803)
L0_0 = ADDENUM
L1_1 = "M5_PizzaMess1Clean"
L0_0(L1_1, 38847)
L0_0 = ADDENUM
L1_1 = "M5_PizzaMess2Clean"
L0_0(L1_1, 38594)
L0_0 = ADDENUM
L1_1 = "M5_PizzaBox"
L0_0(L1_1, 38527)
L0_0 = ADDENUM
L1_1 = "M5_coffeeMess1"
L0_0(L1_1, 487)
L0_0 = ADDENUM
L1_1 = "M5_BaristaInCreature"
L0_0(L1_1, 281)
L0_0 = ADDENUM
L1_1 = "M5_SnowPile"
L0_0(L1_1, 104141)
L0_0 = ADDENUM
L1_1 = "M5_SnakePiece2"
L0_0(L1_1, 50550)
L0_0 = ADDENUM
L1_1 = "M5_TOWNNPC"
L0_0(L1_1, 196218)
L0_0 = ADDENUM
L1_1 = "M5_DOCKNPC"
L0_0(L1_1, 199971)
L0_0 = ADDENUM
L1_1 = "M2_VR_Gary"
L0_0(L1_1, 127724)
L0_0 = ADDENUM
L1_1 = "M2_VR_Director"
L0_0(L1_1, 121029)
L0_0 = ADDENUM
L1_1 = "M5_SnowPileNew"
L0_0(L1_1, 14417)
L0_0 = ADDENUM
L1_1 = "M5_SnakePiece3"
L0_0(L1_1, 157919)
L0_0 = ADDENUM
L1_1 = "M2_JackHammer"
L0_0(L1_1, 128240)
L0_0 = ADDENUM
L1_1 = "M5_HQ_Klutzy"
L0_0(L1_1, 34505)
L0_0 = ADDENUM
L1_1 = "M5_Sport_Klutzy"
L0_0(L1_1, 41305)
L0_0 = ADDENUM
L1_1 = "M5_SkiHill_Klutzy"
L0_0(L1_1, 37604)
L0_0 = ADDENUM
L1_1 = "M6_WildernessCliff_Klutzy"
L0_0(L1_1, 44103)
L0_0 = ADDENUM
L1_1 = "M6_WildernessCave_Klutzy"
L0_0(L1_1, 46015)
L0_0 = ADDENUM
L1_1 = "M6_Gary_Gadget"
L0_0(L1_1, 33737)
L0_0 = ADDENUM
L1_1 = "M6_GaryExploded"
L0_0(L1_1, 33636)
L0_0 = ADDENUM
L1_1 = "M6_SnakePiece"
L0_0(L1_1, 139286)
L0_0 = ADDENUM
L1_1 = "M6_GaryFix"
L0_0(L1_1, 33515)
L0_0 = ADDENUM
L1_1 = "M5_OberryBag"
L0_0(L1_1, 43843)
L0_0 = ADDENUM
L1_1 = "M6_TroughWaterUp"
L0_0(L1_1, 63946)
L0_0 = ADDENUM
L1_1 = "M6_TroughWaterDown"
L0_0(L1_1, 4185)
L0_0 = ADDENUM
L1_1 = "M6_TroughDown"
L0_0(L1_1, 419)
L0_0 = ADDENUM
L1_1 = "M6_TroughUp"
L0_0(L1_1, 63747)
L0_0 = ADDENUM
L1_1 = "M6_leverDown"
L0_0(L1_1, 345)
L0_0 = ADDENUM
L1_1 = "M6_doorOpen"
L0_0(L1_1, 149)
L0_0 = ADDENUM
L1_1 = "M6_CaveExit"
L0_0(L1_1, 127890)
L0_0 = ADDENUM
L1_1 = "M6_Anchor"
L0_0(L1_1, 273)
L0_0 = ADDENUM
L1_1 = "M6_GrapplingHook"
L0_0(L1_1, 372)
L0_0 = ADDENUM
L1_1 = "M6_HerbertCave"
L0_0(L1_1, 63985)
L0_0 = ADDENUM
L1_1 = "M6_MeatPizza"
L0_0(L1_1, 38513)
L0_0 = ADDENUM
L1_1 = "M6_SeaweedPizza"
L0_0(L1_1, 38648)
L0_0 = ADDENUM
L1_1 = "M6_CandyPizza"
L0_0(L1_1, 38428)
L0_0 = ADDENUM
L1_1 = "M6_Fishing_Gary"
L0_0(L1_1, 55345)
L0_0 = ADDENUM
L1_1 = "M6_Lake_Herbert"
L0_0(L1_1, 55316)
L0_0 = ADDENUM
L1_1 = "M6_HotSauce"
L0_0(L1_1, 12)
L0_0 = ADDENUM
L1_1 = "M6_HotOberry"
L0_0(L1_1, 35)
L0_0 = ADDENUM
L1_1 = "M6_SnowHole"
L0_0(L1_1, 64303)
L0_0 = ADDENUM
L1_1 = "M6_door2wilderness"
L0_0(L1_1, 37620)
L0_0 = ADDENUM
L1_1 = "M6_Blueprint"
L0_0(L1_1, 221)
L0_0 = ADDENUM
L1_1 = "M6_OpenDoor2Cave"
L0_0(L1_1, 45763)
L0_0 = ADDENUM
L1_1 = "M6_HerbChopper"
L0_0(L1_1, 55490)
L0_0 = ADDENUM
L1_1 = "M6_KlutzyChopper"
L0_0(L1_1, 55783)
L0_0 = ADDENUM
L1_1 = "M6_Fishing_HerbEat"
L0_0(L1_1, 55322)
L0_0 = ADDENUM
L1_1 = "M6_HerbStanding"
L0_0(L1_1, 227938)
L0_0 = ADDENUM
L1_1 = "M6_Shifter"
L0_0(L1_1, 55726)
L0_0 = ADDENUM
L1_1 = "M6_ShifterReverse"
L0_0(L1_1, 55406)
L0_0 = ADDENUM
L1_1 = "M6_ChopperL"
L0_0(L1_1, 55335)
L0_0 = ADDENUM
L1_1 = "M6_ChopperR"
L0_0(L1_1, 55532)
L0_0 = ADDENUM
L1_1 = "M6_FishingSPizza"
L0_0(L1_1, 55564)
L0_0 = ADDENUM
L1_1 = "M6_cageBroke"
L0_0(L1_1, 33321)
L0_0 = ADDENUM
L1_1 = "SkiVillage_NPC1"
L0_0(L1_1, 40382)
L0_0 = ADDENUM
L1_1 = "SkiVillage_NPC2"
L0_0(L1_1, 40301)
L0_0 = ADDENUM
L1_1 = "M6_TlatorSign1"
L0_0(L1_1, 33708)
L0_0 = ADDENUM
L1_1 = "M6_TlatorSign2"
L0_0(L1_1, 33641)
L0_0 = ADDENUM
L1_1 = "M6_TlatorBroke1"
L0_0(L1_1, 33640)
L0_0 = ADDENUM
L1_1 = "M6_TlatorBroke2"
L0_0(L1_1, 33335)
L0_0 = ADDENUM
L1_1 = "M6_TlatorBroke3"
L0_0(L1_1, 33447)
L0_0 = ADDENUM
L1_1 = "M6_TlatorBroke4"
L0_0(L1_1, 33707)
L0_0 = ADDENUM
L1_1 = "M6_TlatorGearBroke"
L0_0(L1_1, 33489)
L0_0 = ADDENUM
L1_1 = "M6_TlatorDialBroke"
L0_0(L1_1, 33719)
L0_0 = ADDENUM
L1_1 = "M6_TlatorFire"
L0_0(L1_1, 33359)
L0_0 = ADDENUM
L1_1 = "M6_Tlator3"
L0_0(L1_1, 33776)
L0_0 = ADDENUM
L1_1 = "M6_Cage"
L0_0(L1_1, 33295)
L0_0 = ADDENUM
L1_1 = "M6_CageObject"
L0_0(L1_1, 139232)
L0_0 = ADDENUM
L1_1 = "M6_TlatorTable"
L0_0(L1_1, 33682)
L0_0 = ADDENUM
L1_1 = "M6_Fishing_Ice1"
L0_0(L1_1, 55626)
L0_0 = ADDENUM
L1_1 = "M6_Fishing_Ice2"
L0_0(L1_1, 55698)
L0_0 = ADDENUM
L1_1 = "M6_Fishing_Ice3"
L0_0(L1_1, 55742)
L0_0 = ADDENUM
L1_1 = "M6_BlackPuffle"
L0_0(L1_1, 44682)
L0_0 = ADDENUM
L1_1 = "M6_RopeA"
L0_0(L1_1, 347)
L0_0 = ADDENUM
L1_1 = "M6_RopeB"
L0_0(L1_1, 323)
L0_0 = ADDENUM
L1_1 = "M6_CaveChart"
L0_0(L1_1, 189)
L0_0 = ADDENUM
L1_1 = "M6_GenericFlip"
L0_0(L1_1, 18785)
L0_0 = ADDENUM
L1_1 = "M6_PuffleSky"
L0_0(L1_1, 121137)
L0_0 = ADDENUM
L1_1 = "M6_Snow1"
L0_0(L1_1, 126154)
L0_0 = ADDENUM
L1_1 = "M6_Snow2"
L0_0(L1_1, 78091)
L0_0 = ADDENUM
L1_1 = "M6_Snow3"
L0_0(L1_1, 258687)
L0_0 = ADDENUM
L1_1 = "M6_Snow4"
L0_0(L1_1, 222414)
L0_0 = ADDENUM
L1_1 = "M6_Door2Cave"
L0_0(L1_1, 45998)
L0_0 = ADDENUM
L1_1 = "M6_PuffleInDistance1"
L0_0(L1_1, 118579)
L0_0 = ADDENUM
L1_1 = "M6_PuffleInDistance2"
L0_0(L1_1, 122799)
L0_0 = ADDENUM
L1_1 = "M6_Fish"
L0_0(L1_1, 66126)
L0_0 = ADDENUM
L1_1 = "M6_FishForSnakePiece"
L0_0(L1_1, 37567)
L0_0 = ADDENUM
L1_1 = "M6_HerbsPetDoor"
L0_0(L1_1, 45870)
L0_0 = ADDENUM
L1_1 = "M6_CaveDoorRiver"
L0_0(L1_1, 259138)
L0_0 = ADDENUM
L1_1 = "M6_CaveDoorStump"
L0_0(L1_1, 214370)
L0_0 = ADDENUM
L1_1 = "M9_Pump"
L0_0(L1_1, 32650)
L0_0 = ADDENUM
L1_1 = "M9_DuckPatched"
L0_0(L1_1, 33415)
L0_0 = ADDENUM
L1_1 = "M9_SnakePiece"
L0_0(L1_1, 51599)
L0_0 = ADDENUM
L1_1 = "M9_Anvil"
L0_0(L1_1, 46263)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFourHalf"
L0_0(L1_1, 46242)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFourFull"
L0_0(L1_1, 46178)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour0"
L0_0(L1_1, 46513)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour1"
L0_0(L1_1, 46085)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour2"
L0_0(L1_1, 46129)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour3"
L0_0(L1_1, 46426)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour4"
L0_0(L1_1, 46165)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour5"
L0_0(L1_1, 46570)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour6"
L0_0(L1_1, 46557)
L0_0 = ADDENUM
L1_1 = "M9_ConnectFour7"
L0_0(L1_1, 46188)
L0_0 = ADDENUM
L1_1 = "ConnectFourCombine"
L0_0(L1_1, 46372)
L0_0 = ADDENUM
L1_1 = "M9_DuckDeflated"
L0_0(L1_1, 33699)
L0_0 = ADDENUM
L1_1 = "M9_DuckInflated"
L0_0(L1_1, 33693)
L0_0 = ADDENUM
L1_1 = "M9_PlazaPuffles"
L0_0(L1_1, 39082)
L0_0 = ADDENUM
L1_1 = "M9_PlazaPuffelsTalk"
L0_0(L1_1, 38971)
L0_0 = ADDENUM
L1_1 = "M9_PlazaPuffleEnd"
L0_0(L1_1, 39183)
L0_0 = ADDENUM
L1_1 = "M9_Rory"
L0_0(L1_1, 65784)
L0_0 = ADDENUM
L1_1 = "M9_Gum"
L0_0(L1_1, 39220)
L0_0 = ADDENUM
L1_1 = "M9_Receiver1"
L0_0(L1_1, 33326)
L0_0 = ADDENUM
L1_1 = "M9_Receiver2"
L0_0(L1_1, 33625)
L0_0 = ADDENUM
L1_1 = "M9_Receiver3"
L0_0(L1_1, 33630)
L0_0 = ADDENUM
L1_1 = "M9_MineCart"
L0_0(L1_1, 65857)
L0_0 = ADDENUM
L1_1 = "M9_MineCartFixed"
L0_0(L1_1, 65570)
L0_0 = ADDENUM
L1_1 = "M9_MineCartReceiver"
L0_0(L1_1, 65714)
L0_0 = ADDENUM
L1_1 = "M9_KiteReceiver"
L0_0(L1_1, 37720)
L0_0 = ADDENUM
L1_1 = "M9_DuckReceiver"
L0_0(L1_1, 33627)
L0_0 = ADDENUM
L1_1 = "M9_SpyCamera"
L0_0(L1_1, 17520)
L0_0 = ADDENUM
L1_1 = "M9_SpyCameraPhone"
L0_0(L1_1, 65425)
L0_0 = ADDENUM
L1_1 = "M9_HerbsPhone"
L0_0(L1_1, 65335)
L0_0 = ADDENUM
L1_1 = "M9_DuckFloating"
L0_0(L1_1, 53013)
L0_0 = ADDENUM
L1_1 = "M9_GaryHQ"
L0_0(L1_1, 34777)
L0_0 = ADDENUM
L1_1 = "M9_GaryMapHQ"
L0_0(L1_1, 34734)
L0_0 = ADDENUM
L1_1 = "M9_GaryGR"
L0_0(L1_1, 33287)
L0_0 = ADDENUM
L1_1 = "M9_HQMap"
L0_0(L1_1, 34762)
L0_0 = ADDENUM
L1_1 = "M9_DockNPC"
L0_0(L1_1, 32692)
L0_0 = ADDENUM
L1_1 = "M9_TroughDown"
L0_0(L1_1, 65946)
L0_0 = ADDENUM
L1_1 = "M9_TroughUp"
L0_0(L1_1, 65622)
L0_0 = ADDENUM
L1_1 = "M9_SpyPhone1"
L0_0(L1_1, 65032)
L0_0 = ADDENUM
L1_1 = "M9_StaticScreen"
L0_0(L1_1, 34782)
L0_0 = ADDENUM
L1_1 = "M9_StickA"
L0_0(L1_1, 52323)
L0_0 = ADDENUM
L1_1 = "M9_StickB"
L0_0(L1_1, 65571)
L0_0 = ADDENUM
L1_1 = "M9_KiteBlueprint"
L0_0(L1_1, 33517)
L0_0 = ADDENUM
L1_1 = "M9_String"
L0_0(L1_1, 55841)
L0_0 = ADDENUM
L1_1 = "M9_IcebergTarget"
L0_0(L1_1, 53146)
L0_0 = ADDENUM
L1_1 = "M9_KiteStick"
L0_0(L1_1, 37859)
L0_0 = ADDENUM
L1_1 = "M9_KiteString"
L0_0(L1_1, 37556)
L0_0 = ADDENUM
L1_1 = "M9_KiteOnPost"
L0_0(L1_1, 199555)
L0_0 = ADDENUM
L1_1 = "M9_TOWN_BROWNPENG"
L0_0(L1_1, 202249)
L0_0 = ADDENUM
L1_1 = "M9_MineShack_SnakePiece"
L0_0(L1_1, 176370)
L0_0 = ADDENUM
L1_1 = "M10_RookieNCFront"
L0_0(L1_1, 102779)
L0_0 = ADDENUM
L1_1 = "M10_JPGNCFront"
L0_0(L1_1, 102453)
L0_0 = ADDENUM
L1_1 = "M10_NCHerbertStuck"
L0_0(L1_1, 70)
L0_0 = ADDENUM
L1_1 = "M10_RocketPack"
L0_0(L1_1, 106054)
L0_0 = ADDENUM
L1_1 = "M10_TownClothes"
L0_0(L1_1, 10655)
L0_0 = ADDENUM
L1_1 = "M10_TownTable"
L0_0(L1_1, 106057)
L0_0 = ADDENUM
L1_1 = "M10_TownBox"
L0_0(L1_1, 10656)
L0_0 = ADDENUM
L1_1 = "M10_MagnetWires"
L0_0(L1_1, 3187)
L0_0 = ADDENUM
L1_1 = "M10_SolarPanelFixed"
L0_0(L1_1, 3500)
L0_0 = ADDENUM
L1_1 = "M10_ClothesInventory"
L0_0(L1_1, 462)
L0_0 = ADDENUM
L1_1 = "M10_TableInventory"
L0_0(L1_1, 158)
L0_0 = ADDENUM
L1_1 = "M10_BoxInventory"
L0_0(L1_1, 216)
L0_0 = ADDENUM
L1_1 = "M10_SalesClothesGift"
L0_0(L1_1, 478)
L0_0 = ADDENUM
L1_1 = "M10_SalesBoxGift"
L0_0(L1_1, 151)
L0_0 = ADDENUM
L1_1 = "M10_SalesTableGift"
L0_0(L1_1, 52)
L0_0 = ADDENUM
L1_1 = "M10_SalesSign"
L0_0(L1_1, 41630)
L0_0 = ADDENUM
L1_1 = "M10_gHQHerb"
L0_0(L1_1, 34357)
L0_0 = ADDENUM
L1_1 = "M10_BoxAndRope"
L0_0(L1_1, 48165)
L0_0 = ADDENUM
L1_1 = "M10_BOxNoRope"
L0_0(L1_1, 48589)
L0_0 = ADDENUM
L1_1 = "M10_CageNoRope"
L0_0(L1_1, 48211)
L0_0 = ADDENUM
L1_1 = "M10_FixGearBox"
L0_0(L1_1, 48600)
L0_0 = ADDENUM
L1_1 = "M10_CageAndRope"
L0_0(L1_1, 48167)
L0_0 = ADDENUM
L1_1 = "M10_PullyNoRope"
L0_0(L1_1, 48523)
L0_0 = ADDENUM
L1_1 = "M10_PullyWithRope"
L0_0(L1_1, 151261)
L0_0 = ADDENUM
L1_1 = "M10_GaryDrawing"
L0_0(L1_1, 34752)
L0_0 = ADDENUM
L1_1 = "M10_EmptyBox"
L0_0(L1_1, 34796)
L0_0 = ADDENUM
L1_1 = "M10_SolarPanelInv"
L0_0(L1_1, 34807)
L0_0 = ADDENUM
L1_1 = "M10_HQ_DirScreenOn"
L0_0(L1_1, 34609)
L0_0 = ADDENUM
L1_1 = "M10_HQ_DirScreenOff"
L0_0(L1_1, 34398)
L0_0 = ADDENUM
L1_1 = "M10_HQ_HerbLeft"
L0_0(L1_1, 34401)
L0_0 = ADDENUM
L1_1 = "M10_HQ_HerbCenter"
L0_0(L1_1, 34581)
L0_0 = ADDENUM
L1_1 = "M10_HQ_HerbRight"
L0_0(L1_1, 34590)
L0_0 = ADDENUM
L1_1 = "M10_HQ_HerbLeftBlack"
L0_0(L1_1, 34496)
L0_0 = ADDENUM
L1_1 = "M10_HQ_HerbCenterBlack"
L0_0(L1_1, 34776)
L0_0 = ADDENUM
L1_1 = "M10_HQ_HerbRightBlack"
L0_0(L1_1, 34550)
L0_0 = ADDENUM
L1_1 = "M10_HQ_ScreenPenguin"
L0_0(L1_1, 34778)
L0_0 = ADDENUM
L1_1 = "M10_HQ_ScreenPuck"
L0_0(L1_1, 34568)
L0_0 = ADDENUM
L1_1 = "M10_HQ_ScreenDance"
L0_0(L1_1, 34628)
L0_0 = ADDENUM
L1_1 = "M10_HQGary"
L0_0(L1_1, 34667)
L0_0 = ADDENUM
L1_1 = "M10_HQDrawing"
L0_0(L1_1, 34696)
L0_0 = ADDENUM
L1_1 = "M10_ThrownCage"
L0_0(L1_1, 102662)
L0_0 = ADDENUM
L1_1 = "M10_ThrownCage2"
L0_0(L1_1, 102792)
L0_0 = ADDENUM
L1_1 = "M10_ThrownCage3"
L0_0(L1_1, 102688)
L0_0 = ADDENUM
L1_1 = "M10_Spotlight"
L0_0(L1_1, 102862)
L0_0 = ADDENUM
L1_1 = "M10_Spotlight2"
L0_0(L1_1, 102754)
L0_0 = ADDENUM
L1_1 = "M10_Spotlight3"
L0_0(L1_1, 102685)
L0_0 = ADDENUM
L1_1 = "M10_HQRookie"
L0_0(L1_1, 34372)
L0_0 = ADDENUM
L1_1 = "M10_HQJPG"
L0_0(L1_1, 34427)
L0_0 = ADDENUM
L1_1 = "M10_HQDirector"
L0_0(L1_1, 34386)
L0_0 = ADDENUM
L1_1 = "M10_NightClubGary"
L0_0(L1_1, 48462)
L0_0 = ADDENUM
L1_1 = "M10_NightClubRookie"
L0_0(L1_1, 48388)
L0_0 = ADDENUM
L1_1 = "M10_NightClubJPG"
L0_0(L1_1, 48500)
L0_0 = ADDENUM
L1_1 = "M10_NightClubHerbert"
L0_0(L1_1, 48578)
L0_0 = ADDENUM
L1_1 = "M10_NightClubHerbertMagnet"
L0_0(L1_1, 70)
L0_0 = ADDENUM
L1_1 = "M10_NightClubHerbertCaged"
L0_0(L1_1, 102478)
L0_0 = ADDENUM
L1_1 = "M10_NightClubCageL"
L0_0(L1_1, 102697)
L0_0 = ADDENUM
L1_1 = "M10_NightClubCageR"
L0_0(L1_1, 102538)
L0_0 = ADDENUM
L1_1 = "M10_GiftShop_Rookie"
L0_0(L1_1, 50606)
L0_0 = ADDENUM
L1_1 = "M10_GiftShop_Owner"
L0_0(L1_1, 50501)
L0_0 = ADDENUM
L1_1 = "M10_GiftShop_OwnerStart"
L0_0(L1_1, 30558)
L0_0 = ADDENUM
L1_1 = "M10_Beach_JPG"
L0_0(L1_1, 31103)
L0_0 = ADDENUM
L1_1 = "M10_Rope"
L0_0(L1_1, 32443)
L0_0 = ADDENUM
L1_1 = "M10_Soda"
L0_0(L1_1, 42460)
L0_0 = ADDENUM
L1_1 = "M10_SolarPanel"
L0_0(L1_1, 34530)
L0_0 = ADDENUM
L1_1 = "M10_GearBox"
L0_0(L1_1, 48177)
L0_0 = ADDENUM
L1_1 = "M10_JPGJetPack"
L0_0(L1_1, 48391)
L0_0 = ADDENUM
L1_1 = "M10_Docks_HerbertDecoy"
L0_0(L1_1, 32709)
L0_0 = ADDENUM
L1_1 = "M10_Docks_Kluzy"
L0_0(L1_1, 32393)
L0_0 = ADDENUM
L1_1 = "M10_Docks_RopeNPC"
L0_0(L1_1, 32272)
L0_0 = ADDENUM
L1_1 = "M10_BagDrop"
L0_0(L1_1, 48504)
L0_0 = ADDENUM
L1_1 = "M10_NCFlipBoard"
L0_0(L1_1, 102601)
L0_0 = ADDENUM
L1_1 = "M10_NCFlipBoard2"
L0_0(L1_1, 102880)
L0_0 = ADDENUM
L1_1 = "M10_NCFlipBoard3"
L0_0(L1_1, 102863)
L0_0 = ADDENUM
L1_1 = "M10_NCFlipBoard4"
L0_0(L1_1, 102650)
L0_0 = ADDENUM
L1_1 = "M10_NCFlipBoard5"
L0_0(L1_1, 102640)
L0_0 = ADDENUM
L1_1 = "M10_CageBars"
L0_0(L1_1, 102878)
L0_0 = ADDENUM
L1_1 = "M10_CageBarsEnd"
L0_0(L1_1, 10651)
L0_0 = ADDENUM
L1_1 = "M10_JetPackInventory"
L0_0(L1_1, 71)
L0_0 = ADDENUM
L1_1 = "M10_SnakePiece"
L0_0(L1_1, 2446)
L0_0 = ADDENUM
L1_1 = "M10_SnowPile"
L0_0(L1_1, 76328)
L0_0 = ADDENUM
L1_1 = "M10_Docks_Rory"
L0_0(L1_1, 100331)
L0_0 = ADDENUM
L1_1 = "M10_Docks_Hole"
L0_0(L1_1, 168648)
L0_0 = ADDENUM
L1_1 = "M6_GiftVaultDoor"
L0_0(L1_1, 89)
L0_0 = ADDENUM
L1_1 = "M10_NightClub0_Cage1"
L0_0(L1_1, 149945)
L0_0 = ADDENUM
L1_1 = "M10_NightClub0_Cage2"
L0_0(L1_1, 212752)
L0_0 = ADDENUM
L1_1 = "M10_NightClub0_Cage3"
L0_0(L1_1, 173145)
L0_0 = ADDENUM
L1_1 = "M10_NightClub_Scissors"
L0_0(L1_1, 188309)
L0_0 = ADDENUM
L1_1 = "M10_CageUp"
L0_0(L1_1, 48584)
L0_0 = ADDENUM
L1_1 = "M10_GoldenPuffleOnStand"
L0_0(L1_1, 10652)
L0_0 = ADDENUM
L1_1 = "M10_GoldenPuffleOnMagnet"
L0_0(L1_1, 66318)
L0_0 = ADDENUM
L1_1 = "M11_HQ_Rookie"
L0_0(L1_1, 34694)
L0_0 = ADDENUM
L1_1 = "M11_HQ_JPG"
L0_0(L1_1, 64795)
L0_0 = ADDENUM
L1_1 = "M11_HQHerbertScreen"
L0_0(L1_1, 34500)
L0_0 = ADDENUM
L1_1 = "M11_HQHerbertScreenLeft"
L0_0(L1_1, 2571)
L0_0 = ADDENUM
L1_1 = "M11_HQHerbertScreenRight"
L0_0(L1_1, 2572)
L0_0 = ADDENUM
L1_1 = "M11_GS_NPC_JPG"
L0_0(L1_1, 51023)
L0_0 = ADDENUM
L1_1 = "M11_GS_NPC_Rookie"
L0_0(L1_1, 50279)
L0_0 = ADDENUM
L1_1 = "M11_HQGaryScreen"
L0_0(L1_1, 34809)
L0_0 = ADDENUM
L1_1 = "M11_HQGaryEscape"
L0_0(L1_1, 34434)
L0_0 = ADDENUM
L1_1 = "M11_HQRookieEscape"
L0_0(L1_1, 34406)
L0_0 = ADDENUM
L1_1 = "M11_HerbertCornMaze"
L0_0(L1_1, 1026)
L0_0 = ADDENUM
L1_1 = "M11_CornMaze_Rookie"
L0_0(L1_1, 1027)
L0_0 = ADDENUM
L1_1 = "M11_HQDotEscape"
L0_0(L1_1, 34592)
L0_0 = ADDENUM
L1_1 = "M11_VillageHerbert"
L0_0(L1_1, 37390)
L0_0 = ADDENUM
L1_1 = "M11_VillageHerbertBG"
L0_0(L1_1, 106055)
L0_0 = ADDENUM
L1_1 = "M11_VillageStatic"
L0_0(L1_1, 106059)
L0_0 = ADDENUM
L1_1 = "M11_VillageScreen"
L0_0(L1_1, 40265)
L0_0 = ADDENUM
L1_1 = "M11_VillageDVDPlayer"
L0_0(L1_1, 4627)
L0_0 = ADDENUM
L1_1 = "M11_VillageGary"
L0_0(L1_1, 3083)
L0_0 = ADDENUM
L1_1 = "M11_VillageRookie"
L0_0(L1_1, 40318)
L0_0 = ADDENUM
L1_1 = "M11_VillageRookieDVD"
L0_0(L1_1, 135550)
L0_0 = ADDENUM
L1_1 = "M11_VillageRookiePop"
L0_0(L1_1, 3085)
L0_0 = ADDENUM
L1_1 = "M11_VillageJPG"
L0_0(L1_1, 4622)
L0_0 = ADDENUM
L1_1 = "M11_VillageJPGPop"
L0_0(L1_1, 3087)
L0_0 = ADDENUM
L1_1 = "M11_VillageDot"
L0_0(L1_1, 3084)
L0_0 = ADDENUM
L1_1 = "M11_KernelClue1"
L0_0(L1_1, 50425)
L0_0 = ADDENUM
L1_1 = "M11_KernelClue2"
L0_0(L1_1, 50696)
L0_0 = ADDENUM
L1_1 = "M11_AllKernelClues"
L0_0(L1_1, 50334)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPCP1"
L0_0(L1_1, 40317)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPCP2"
L0_0(L1_1, 40311)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPCBrownP"
L0_0(L1_1, 40437)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPCP1Marb"
L0_0(L1_1, 206588)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPCP2Marb"
L0_0(L1_1, 11742)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPCP3Marb"
L0_0(L1_1, 51394)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPCBrownPPop"
L0_0(L1_1, 3088)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPC2Pop"
L0_0(L1_1, 3089)
L0_0 = ADDENUM
L1_1 = "M11_VillageNPC1Pop"
L0_0(L1_1, 3086)
L0_0 = ADDENUM
L1_1 = "M11_LH_Music_NPC"
L0_0(L1_1, 479)
L0_0 = ADDENUM
L1_1 = "M11_DVDsInBox"
L0_0(L1_1, 481)
L0_0 = ADDENUM
L1_1 = "M11_DVDs"
L0_0(L1_1, 10600)
L0_0 = ADDENUM
L1_1 = "M11_DVDs2"
L0_0(L1_1, 185811)
L0_0 = ADDENUM
L1_1 = "M11_EmptyBox"
L0_0(L1_1, 480)
L0_0 = ADDENUM
L1_1 = "M11_Marbles2"
L0_0(L1_1, 4625)
L0_0 = ADDENUM
L1_1 = "M11_MarblesGround"
L0_0(L1_1, 181582)
L0_0 = ADDENUM
L1_1 = "M11_CornGround"
L0_0(L1_1, 40171)
L0_0 = ADDENUM
L1_1 = "M11_MancalaBoard"
L0_0(L1_1, 54921)
L0_0 = ADDENUM
L1_1 = "M11_MancalawMarb"
L0_0(L1_1, 84085)
L0_0 = ADDENUM
L1_1 = "PanelDoor"
L0_0(L1_1, 3586)
L0_0 = ADDENUM
L1_1 = "M11_Plank"
L0_0(L1_1, 4098)
L0_0 = ADDENUM
L1_1 = "M11_RiverPlank"
L0_0(L1_1, 195750)
L0_0 = ADDENUM
L1_1 = "M11_CR_Door"
L0_0(L1_1, 34627)
L0_0 = ADDENUM
L1_1 = "M11_CR_DoorPanel"
L0_0(L1_1, 10657)
L0_0 = ADDENUM
L1_1 = "M11_CR_Book"
L0_0(L1_1, 10654)
L0_0 = ADDENUM
L1_1 = "M11_Cloth"
L0_0(L1_1, 106053)
L0_0 = ADDENUM
L1_1 = "M11_SalonChairHQ"
L0_0(L1_1, 106051)
L0_0 = ADDENUM
L1_1 = "M11_PopcornBomb"
L0_0(L1_1, 106052)
L0_0 = ADDENUM
L1_1 = "M11_Timer"
L0_0(L1_1, 9009)
L0_0 = ADDENUM
L1_1 = "SignalLocation"
L0_0(L1_1, 138403)
L0_0 = ADDENUM
L1_1 = "M11_MazeKernel1"
L0_0(L1_1, 172517)
L0_0 = ADDENUM
L1_1 = "M11_MazeKernel2"
L0_0(L1_1, 47294)
L0_0 = ADDENUM
L1_1 = "M11_MazePaper1"
L0_0(L1_1, 256278)
L0_0 = ADDENUM
L1_1 = "M11_MazePaper2"
L0_0(L1_1, 172485)
L0_0 = ADDENUM
L1_1 = "M11_Maze2Kernel1"
L0_0(L1_1, 56387)
L0_0 = ADDENUM
L1_1 = "M11_Maze2Kernel2"
L0_0(L1_1, 181813)
L0_0 = ADDENUM
L1_1 = "M11_Maze2Paper1"
L0_0(L1_1, 168101)
L0_0 = ADDENUM
L1_1 = "M11_Maze2Paper2"
L0_0(L1_1, 124576)
L0_0 = ADDENUM
L1_1 = "M11_MazeRecipe1"
L0_0(L1_1, 7784)
L0_0 = ADDENUM
L1_1 = "M11_MazeRecipe2"
L0_0(L1_1, 93796)
L0_0 = ADDENUM
L1_1 = "M11_Maze2Recipe1"
L0_0(L1_1, 45463)
L0_0 = ADDENUM
L1_1 = "M11_Maze2Recipe2"
L0_0(L1_1, 110940)
L0_0 = ADDENUM
L1_1 = "M11_MazeCornPile1"
L0_0(L1_1, 77289)
L0_0 = ADDENUM
L1_1 = "M11_MazeCornPile2"
L0_0(L1_1, 211396)
L0_0 = ADDENUM
L1_1 = "M11_MazeCornPile3"
L0_0(L1_1, 198467)
L0_0 = ADDENUM
L1_1 = "M11_Maze2CornPile1"
L0_0(L1_1, 57959)
L0_0 = ADDENUM
L1_1 = "M11_Maze2CornPile2"
L0_0(L1_1, 260135)
L0_0 = ADDENUM
L1_1 = "M11_Maze2CornPile3"
L0_0(L1_1, 28923)
L0_0 = ADDENUM
L1_1 = "M11_SnakePiece"
L0_0(L1_1, 131198)
L0_0 = ADDENUM
L1_1 = "M11_Town_FindFourNPC"
L0_0(L1_1, 125077)
L0_0 = ADDENUM
L1_1 = "M11_SignalLocation"
L0_0(L1_1, 65156)
L0_0 = ADDENUM
L1_1 = "M11_SecretBridge"
L0_0(L1_1, 87424)
L0_0 = ADDENUM
L1_1 = "M11_CornMazeTorch"
L0_0(L1_1, 63653)
L0_0 = ADDENUM
L1_1 = "M11_CornMazeLadder"
L0_0(L1_1, 4610)
L0_0 = ADDENUM
L1_1 = "M11_RiverBridge1"
L0_0(L1_1, 27750)
L0_0 = ADDENUM
L1_1 = "M11_CornBomb"
L0_0(L1_1, 106052)
L0_0 = ADDENUM
L1_1 = "M11_RookiMineShack"
L0_0(L1_1, 196619)
L0_0 = ADDENUM
L1_1 = "M11_RookieGiftShop"
L0_0(L1_1, 50279)
L0_0 = ADDENUM
L1_1 = "M11_GaryPopPhone"
L0_0(L1_1, 3083)
L0_0 = ADDENUM
L1_1 = "M11_CRDoor_Notepad"
L0_0(L1_1, 106058)
L0_0 = ADDENUM
L1_1 = "M11_DVD_Movie"
L0_0(L1_1, 3587)
L0_0 = ADDENUM
L1_1 = "M1_HangingTarget01"
L0_0(L1_1, 5124)
L0_0 = ADDENUM
L1_1 = "M1_Target01"
L0_0(L1_1, 252224)
L0_0 = ADDENUM
L1_1 = "M1_Target02"
L0_0(L1_1, 200948)
L0_0 = ADDENUM
L1_1 = "M1_CrateTarget01"
L0_0(L1_1, 5134)
L0_0 = ADDENUM
L1_1 = "M1_CrateTarget02"
L0_0(L1_1, 5123)
L0_0 = ADDENUM
L1_1 = "M1_CRDirector"
L0_0(L1_1, 32210)
L0_0 = ADDENUM
L1_1 = "M1_CRRookie"
L0_0(L1_1, 32209)
L0_0 = ADDENUM
L1_1 = "M1_CRDot"
L0_0(L1_1, 32207)
L0_0 = ADDENUM
L1_1 = "M1_CRJPG"
L0_0(L1_1, 32208)
L0_0 = ADDENUM
L1_1 = "M1_TC_PuffleHandler"
L0_0(L1_1, 5128)
L0_0 = ADDENUM
L1_1 = "M1_TC_Rookie"
L0_0(L1_1, 5133)
L0_0 = ADDENUM
L1_1 = "M1_TC_JPG"
L0_0(L1_1, 5131)
L0_0 = ADDENUM
L1_1 = "M1_TC1_JPG"
L0_0(L1_1, 102899)
L0_0 = ADDENUM
L1_1 = "M1_TC1_Dot"
L0_0(L1_1, 102900)
L0_0 = ADDENUM
L1_1 = "M1_TC1_Rookie"
L0_0(L1_1, 102901)
L0_0 = ADDENUM
L1_1 = "M1_TC4_JPG"
L0_0(L1_1, 102893)
L0_0 = ADDENUM
L1_1 = "M1_TC4_Dot"
L0_0(L1_1, 102897)
L0_0 = ADDENUM
L1_1 = "M1_TC4_Rookie"
L0_0(L1_1, 102894)
L0_0 = ADDENUM
L1_1 = "M1_TC_Dot"
L0_0(L1_1, 5130)
L0_0 = ADDENUM
L1_1 = "M1_TC_DirectorScreen"
L0_0(L1_1, 5137)
L0_0 = ADDENUM
L1_1 = "M1_TC_Director"
L0_0(L1_1, 214700)
L0_0 = ADDENUM
L1_1 = "M1_spring"
L0_0(L1_1, 102888)
L0_0 = ADDENUM
L1_1 = "M1_river"
L0_0(L1_1, 109959)
L0_0 = ADDENUM
L1_1 = "M1_bucket"
L0_0(L1_1, 102887)
L0_0 = ADDENUM
L1_1 = "M1_rope"
L0_0(L1_1, 102886)
L0_0 = ADDENUM
L1_1 = "M1_TC_anchor"
L0_0(L1_1, 180983)
L0_0 = ADDENUM
L1_1 = "C1_T2_Rookie"
L0_0(L1_1, 5635)
L0_0 = ADDENUM
L1_1 = "C1_T2_JPG"
L0_0(L1_1, 5637)
L0_0 = ADDENUM
L1_1 = "C1_T2_JPGFarBack"
L0_0(L1_1, 244052)
L0_0 = ADDENUM
L1_1 = "C1_T2_Dot"
L0_0(L1_1, 5636)
L0_0 = ADDENUM
L1_1 = "M1_T3_Rookie"
L0_0(L1_1, 102909)
L0_0 = ADDENUM
L1_1 = "M1_T3_RookieDuck"
L0_0(L1_1, 88672)
L0_0 = ADDENUM
L1_1 = "M1_T3_Dot"
L0_0(L1_1, 102910)
L0_0 = ADDENUM
L1_1 = "M1_T3_JPG"
L0_0(L1_1, 102911)
L0_0 = ADDENUM
L1_1 = "C1_GrapplingHook"
L0_0(L1_1, 217414)
L0_0 = ADDENUM
L1_1 = "C1_InventoryItem_JetPack"
L0_0(L1_1, 149654)
L0_0 = ADDENUM
L1_1 = "C1_InventoryItem_JetPackNStick"
L0_0(L1_1, 14119)
L0_0 = ADDENUM
L1_1 = "C1_InventoryItem_FishOnStick"
L0_0(L1_1, 164652)
L0_0 = ADDENUM
L1_1 = "C1_InventoryItem_String"
L0_0(L1_1, 252028)
L0_0 = ADDENUM
L1_1 = "M1_T7_Rookie"
L0_0(L1_1, 177854)
L0_0 = ADDENUM
L1_1 = "M1_T7_Dot"
L0_0(L1_1, 199749)
L0_0 = ADDENUM
L1_1 = "M1_T7_JPG"
L0_0(L1_1, 213348)
L0_0 = ADDENUM
L1_1 = "M1_T6_Rookie"
L0_0(L1_1, 106018)
L0_0 = ADDENUM
L1_1 = "M1_T6_Dot"
L0_0(L1_1, 106017)
L0_0 = ADDENUM
L1_1 = "M1_T6_JPG"
L0_0(L1_1, 106016)
L0_0 = ADDENUM
L1_1 = "C1_InventoryItem_JetPackNStickComplete"
L0_0(L1_1, 196678)
L0_0 = ADDENUM
L1_1 = "M1_T5_Rookie"
L0_0(L1_1, 106020)
L0_0 = ADDENUM
L1_1 = "M1_T5_Dot"
L0_0(L1_1, 106019)
L0_0 = ADDENUM
L1_1 = "M1_T5_JPG"
L0_0(L1_1, 106021)
L0_0 = ADDENUM
L1_1 = "M1_T5_Director"
L0_0(L1_1, 44697)
L0_0 = ADDENUM
L1_1 = "C1_FullBox"
L0_0(L1_1, 102884)
L0_0 = ADDENUM
L1_1 = "C1_EmptyBox"
L0_0(L1_1, 161836)
L0_0 = ADDENUM
L1_1 = "M1_CRScreen_EPFLogo"
L0_0(L1_1, 31806)
L0_0 = ADDENUM
L1_1 = "C1_MetalWallDoorTalking"
L0_0(L1_1, 65205)
L0_0 = ADDENUM
L1_1 = "C1_MetalBars"
L0_0(L1_1, 120195)
L0_0 = ADDENUM
L1_1 = "C1_InventoryItem_JackHammer"
L0_0(L1_1, 130091)
L0_0 = ADDENUM
L1_1 = "C1_InventoryItem_DirtyJackHammerParts"
L0_0(L1_1, 153701)
L0_0 = ADDENUM
L1_1 = "C1_SoftDirtSpot"
L0_0(L1_1, 117844)
L0_0 = ADDENUM
L1_1 = "OpenedMetalDoor1"
L0_0(L1_1, 174245)
L0_0 = ADDENUM
L1_1 = "OpenedMetalDoor2"
L0_0(L1_1, 205430)
L0_0 = ADDENUM
L1_1 = "OpenedMetalDoor3"
L0_0(L1_1, 178916)
L0_0 = ADDENUM
L1_1 = "OpenedMetalDoor4"
L0_0(L1_1, 81067)
L0_0 = ADDENUM
L1_1 = "PuffleTrainingDoor1"
L0_0(L1_1, 255108)
L0_0 = ADDENUM
L1_1 = "PuffleTrainingDoor2"
L0_0(L1_1, 149622)
L0_0 = ADDENUM
L1_1 = "PuffleTrainingDoor3"
L0_0(L1_1, 49101)
L0_0 = ADDENUM
L1_1 = "C1_SpringNBucket"
L0_0(L1_1, 111423)
L0_0 = ADDENUM
L1_1 = "C1_RopeNBucket"
L0_0(L1_1, 129122)
L0_0 = ADDENUM
L1_1 = "C1_TargetLight1"
L0_0(L1_1, 18452)
L0_0 = ADDENUM
L1_1 = "C1_TargetLight2"
L0_0(L1_1, 248210)
L0_0 = ADDENUM
L1_1 = "C1_TargetLight3"
L0_0(L1_1, 182765)
L0_0 = ADDENUM
L1_1 = "C1_DoorTargetLight1"
L0_0(L1_1, 158622)
L0_0 = ADDENUM
L1_1 = "C1_DoorTargetLight2"
L0_0(L1_1, 9533)
L0_0 = ADDENUM
L1_1 = "C1_DoorTargetLight3"
L0_0(L1_1, 47720)
L0_0 = ADDENUM
L1_1 = "M1_T7_Rookie2"
L0_0(L1_1, 137754)
L0_0 = ADDENUM
L1_1 = "M1_T7_Dot2"
L0_0(L1_1, 129745)
L0_0 = ADDENUM
L1_1 = "M1_T7_JPG2"
L0_0(L1_1, 96422)
L0_0 = ADDENUM
L1_1 = "M1_WASH_ANIM"
L0_0(L1_1, 259219)
L0_0 = ADDENUM
L1_1 = "C2_CR_Dot"
L0_0(L1_1, 65030)
L0_0 = ADDENUM
L1_1 = "C2_CR_Director"
L0_0(L1_1, 160100)
L0_0 = ADDENUM
L1_1 = "C2_CR_Rookie"
L0_0(L1_1, 258159)
L0_0 = ADDENUM
L1_1 = "C2_CR_JPG"
L0_0(L1_1, 108790)
L0_0 = ADDENUM
L1_1 = "C2_CR_Gary"
L0_0(L1_1, 62511)
L0_0 = ADDENUM
L1_1 = "C2_Camera"
L0_0(L1_1, 215769)
L0_0 = ADDENUM
L1_1 = "C2_CrabCostume"
L0_0(L1_1, 111391)
L0_0 = ADDENUM
L1_1 = "C2_BP_PieceA"
L0_0(L1_1, 125986)
L0_0 = ADDENUM
L1_1 = "C2_BP_PieceB"
L0_0(L1_1, 186016)
L0_0 = ADDENUM
L1_1 = "C2_BP_PieceC"
L0_0(L1_1, 171098)
L0_0 = ADDENUM
L1_1 = "C2_bluePrintStack1"
L0_0(L1_1, 2258)
L0_0 = ADDENUM
L1_1 = "C2_bluePrintStack2"
L0_0(L1_1, 190681)
L0_0 = ADDENUM
L1_1 = "C2_bluePrintStack3"
L0_0(L1_1, 118779)
L0_0 = ADDENUM
L1_1 = "C2_BP_PieceD"
L0_0(L1_1, 148698)
L0_0 = ADDENUM
L1_1 = "C2_Blueprint"
L0_0(L1_1, 87087)
L0_0 = ADDENUM
L1_1 = "C2_Wilderness_JPG"
L0_0(L1_1, 237602)
L0_0 = ADDENUM
L1_1 = "C2_Wilderness_Dot"
L0_0(L1_1, 129700)
L0_0 = ADDENUM
L1_1 = "C2_PileofDirt"
L0_0(L1_1, 61243)
L0_0 = ADDENUM
L1_1 = "C2_3x3Grid"
L0_0(L1_1, 142302)
L0_0 = ADDENUM
L1_1 = "C2_FakeRock1"
L0_0(L1_1, 17021)
L0_0 = ADDENUM
L1_1 = "C2_FakeRock2"
L0_0(L1_1, 107532)
L0_0 = ADDENUM
L1_1 = "C2_Stump"
L0_0(L1_1, 176900)
L0_0 = ADDENUM
L1_1 = "C2_Hatch"
L0_0(L1_1, 106460)
L0_0 = ADDENUM
L1_1 = "C2_HatchUnlock"
L0_0(L1_1, 226949)
L0_0 = ADDENUM
L1_1 = "C2_HerbDoorMat"
L0_0(L1_1, 225282)
L0_0 = ADDENUM
L1_1 = "C2_HatchKey"
L0_0(L1_1, 189456)
L0_0 = ADDENUM
L1_1 = "C2_HBStorage_Klutzy"
L0_0(L1_1, 104913)
L0_0 = ADDENUM
L1_1 = "C2_HBStorage_Herbet"
L0_0(L1_1, 261579)
L0_0 = ADDENUM
L1_1 = "C2_GridPaper"
L0_0(L1_1, 172064)
L0_0 = ADDENUM
L1_1 = "C2_CameraObject1"
L0_0(L1_1, 217807)
L0_0 = ADDENUM
L1_1 = "C2_CameraObject2A"
L0_0(L1_1, 137946)
L0_0 = ADDENUM
L1_1 = "C2_CameraObject2B"
L0_0(L1_1, 217300)
L0_0 = ADDENUM
L1_1 = "C2_CameraObject3A"
L0_0(L1_1, 40153)
L0_0 = ADDENUM
L1_1 = "C2_CameraObject3B"
L0_0(L1_1, 191127)
L0_0 = ADDENUM
L1_1 = "C2_SnowPile"
L0_0(L1_1, 131643)
L0_0 = ADDENUM
L1_1 = "C2_WildernessBerry_JPG"
L0_0(L1_1, 133049)
L0_0 = ADDENUM
L1_1 = "C2_WildernessBerry_Hole"
L0_0(L1_1, 145995)
L0_0 = ADDENUM
L1_1 = "C2_HBLobby_Panel"
L0_0(L1_1, 242356)
L0_0 = ADDENUM
L1_1 = "C2_HBDen_Switch"
L0_0(L1_1, 61388)
L0_0 = ADDENUM
L1_1 = "C2_HKEY3"
L0_0(L1_1, 140212)
L0_0 = ADDENUM
L1_1 = "C2_HKEY2"
L0_0(L1_1, 242844)
L0_0 = ADDENUM
L1_1 = "C2_HKEY4"
L0_0(L1_1, 32664)
L0_0 = ADDENUM
L1_1 = "C2_KeyAnim"
L0_0(L1_1, 73530)
L0_0 = ADDENUM
L1_1 = "C2_Blueprint2"
L0_0(L1_1, 118305)
L0_0 = ADDENUM
L1_1 = "C2_BlueprintTree"
L0_0(L1_1, 125473)
L0_0 = ADDENUM
L1_1 = "C2_Bucket"
L0_0(L1_1, 222148)
L0_0 = ADDENUM
L1_1 = "C2_HeavyRock"
L0_0(L1_1, 176964)
L0_0 = ADDENUM
L1_1 = "C2_CameraZoom1"
L0_0(L1_1, 97495)
L0_0 = ADDENUM
L1_1 = "C2_CameraZoom2"
L0_0(L1_1, 125764)
L0_0 = ADDENUM
L1_1 = "C2_CameraZoom3"
L0_0(L1_1, 125179)
L0_0 = ADDENUM
L1_1 = "C2_CameraZoomGary"
L0_0(L1_1, 23960)
L0_0 = ADDENUM
L1_1 = "C2_BlastDoor"
L0_0(L1_1, 238692)
L0_0 = ADDENUM
L1_1 = "C2_HBWorkshop_Herb"
L0_0(L1_1, 208706)
L0_0 = ADDENUM
L1_1 = "C2_HerbCamp2SkiLodge"
L0_0(L1_1, 164402)
L0_0 = ADDENUM
L1_1 = "C2_Light2HerbsDoor1"
L0_0(L1_1, 203775)
L0_0 = ADDENUM
L1_1 = "C2_Light2HerbsDoor2"
L0_0(L1_1, 198424)
L0_0 = ADDENUM
L1_1 = "C2_Light2HerbsDoor3"
L0_0(L1_1, 16782)
L0_0 = ADDENUM
L1_1 = "C2_ShiningLight"
L0_0(L1_1, 227932)
L0_0 = ADDENUM
L1_1 = "C2_TwinklingLight"
L0_0(L1_1, 51559)
L0_0 = ADDENUM
L1_1 = "C2_Workshop_Button"
L0_0(L1_1, 64479)
L0_0 = ADDENUM
L1_1 = "C2_HBLobby_Siren1"
L0_0(L1_1, 223342)
L0_0 = ADDENUM
L1_1 = "C2_HBLobby_Siren2"
L0_0(L1_1, 149746)
L0_0 = ADDENUM
L1_1 = "C2_HBLobby_Siren3"
L0_0(L1_1, 141170)
L0_0 = ADDENUM
L1_1 = "C3_CR_Dot"
L0_0(L1_1, 123482)
L0_0 = ADDENUM
L1_1 = "C3_CR_DotEffect"
L0_0(L1_1, 202001)
L0_0 = ADDENUM
L1_1 = "C3_CR_Director"
L0_0(L1_1, 161981)
L0_0 = ADDENUM
L1_1 = "C3_CR_Rookie"
L0_0(L1_1, 163405)
L0_0 = ADDENUM
L1_1 = "C3_CR_JPG"
L0_0(L1_1, 142668)
L0_0 = ADDENUM
L1_1 = "C3_CR_Gary"
L0_0(L1_1, 106229)
L0_0 = ADDENUM
L1_1 = "C3_CR_IslandSinkAnim"
L0_0(L1_1, 112086)
L0_0 = ADDENUM
L1_1 = "C3_TM_Dot"
L0_0(L1_1, 222119)
L0_0 = ADDENUM
L1_1 = "C3_TM_Rookie"
L0_0(L1_1, 139102)
L0_0 = ADDENUM
L1_1 = "C3_TM_JPGonRocket"
L0_0(L1_1, 189647)
L0_0 = ADDENUM
L1_1 = "C3_TM_JPG"
L0_0(L1_1, 172514)
L0_0 = ADDENUM
L1_1 = "C3_CR_HeadGear"
L0_0(L1_1, 137106)
L0_0 = ADDENUM
L1_1 = "C3_CR_TrackingDevice"
L0_0(L1_1, 86259)
L0_0 = ADDENUM
L1_1 = "C3_CR_Grappling"
L0_0(L1_1, 194943)
L0_0 = ADDENUM
L1_1 = "C3_River"
L0_0(L1_1, 236200)
L0_0 = ADDENUM
L1_1 = "C3_River2"
L0_0(L1_1, 103716)
L0_0 = ADDENUM
L1_1 = "C3_IceBridge"
L0_0(L1_1, 161399)
L0_0 = ADDENUM
L1_1 = "C3_RookiesHat"
L0_0(L1_1, 91183)
L0_0 = ADDENUM
L1_1 = "C3_IceCage"
L0_0(L1_1, 237443)
L0_0 = ADDENUM
L1_1 = "C3_FishingPole"
L0_0(L1_1, 256918)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop_Dot"
L0_0(L1_1, 2835)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop_Rookie"
L0_0(L1_1, 197882)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop_JPG"
L0_0(L1_1, 108111)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop_FishPole"
L0_0(L1_1, 171447)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop2_Dot"
L0_0(L1_1, 52920)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop2_Rookie"
L0_0(L1_1, 37265)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop2_JPG"
L0_0(L1_1, 25300)
L0_0 = ADDENUM
L1_1 = "C3_MountainTop_Herbert"
L0_0(L1_1, 166434)
L0_0 = ADDENUM
L1_1 = "C3_DotsCage"
L0_0(L1_1, 45232)
L0_0 = ADDENUM
L1_1 = "C3_Dot_MT"
L0_0(L1_1, 2835)
L0_0 = ADDENUM
L1_1 = "PuffleCage"
L0_0(L1_1, 195567)
L0_0 = ADDENUM
L1_1 = "PuffleIcCage"
L0_0(L1_1, 149999)
L0_0 = ADDENUM
L1_1 = "C3_FakeTree"
L0_0(L1_1, 129148)
L0_0 = ADDENUM
L1_1 = "C3_PurplePuffleInBalloon"
L0_0(L1_1, 75777)
L0_0 = ADDENUM
L1_1 = "C3_SkiHill_TelescopeNPC"
L0_0(L1_1, 98326)
L0_0 = ADDENUM
L1_1 = "C3_WindMillStand"
L0_0(L1_1, 109348)
L0_0 = ADDENUM
L1_1 = "C3_PinkPuffle"
L0_0(L1_1, 125023)
L0_0 = ADDENUM
L1_1 = "C3_RedSpeaker1"
L0_0(L1_1, 166851)
L0_0 = ADDENUM
L1_1 = "C3_RedSpeaker2"
L0_0(L1_1, 231312)
L0_0 = ADDENUM
L1_1 = "C3_PropellerBladeStack_1"
L0_0(L1_1, 47785)
L0_0 = ADDENUM
L1_1 = "C3_PropellerBladeStack_2"
L0_0(L1_1, 243625)
L0_0 = ADDENUM
L1_1 = "C3_PropellerBladeStack_3"
L0_0(L1_1, 144697)
L0_0 = ADDENUM
L1_1 = "C3_PropellerBladeStack_4"
L0_0(L1_1, 78298)
L0_0 = ADDENUM
L1_1 = "C3_BrokePropeller"
L0_0(L1_1, 83449)
L0_0 = ADDENUM
L1_1 = "C3_Door2Rookie1"
L0_0(L1_1, 130246)
L0_0 = ADDENUM
L1_1 = "C3_Door2Rookie2"
L0_0(L1_1, 175966)
L0_0 = ADDENUM
L1_1 = "C3_Door2Rookie3"
L0_0(L1_1, 132094)
L0_0 = ADDENUM
L1_1 = "C3_Door2Rookie4"
L0_0(L1_1, 214879)
L0_0 = ADDENUM
L1_1 = "C3_HerbertTrackingDisplay"
L0_0(L1_1, 3055)
L0_0 = ADDENUM
L1_1 = "C3_WindmillStand"
L0_0(L1_1, 45335)
L0_0 = ADDENUM
L1_1 = "C3_FallingBoulder"
L0_0(L1_1, 125656)
L0_0 = ADDENUM
L1_1 = "C3_Boulder"
L0_0(L1_1, 64350)
L0_0 = ADDENUM
L1_1 = "C3_BoulderRaised"
L0_0(L1_1, 134396)
L0_0 = ADDENUM
L1_1 = "C3_FixedPropeller"
L0_0(L1_1, 96037)
L0_0 = ADDENUM
L1_1 = "C3_CombinedPropeller"
L0_0(L1_1, 26925)
L0_0 = ADDENUM
L1_1 = "C3_IceBricks_1"
L0_0(L1_1, 218289)
L0_0 = ADDENUM
L1_1 = "C3_IceBricks_2"
L0_0(L1_1, 131327)
L0_0 = ADDENUM
L1_1 = "C3_IceBricks_3"
L0_0(L1_1, 192852)
L0_0 = ADDENUM
L1_1 = "C3_IceBricks_4"
L0_0(L1_1, 75367)
L0_0 = ADDENUM
L1_1 = "C3_IceBricks_5"
L0_0(L1_1, 24618)
L0_0 = ADDENUM
L1_1 = "C3_JackHammer"
L0_0(L1_1, 43060)
L0_0 = ADDENUM
L1_1 = "DistantHerbDock1"
L0_0(L1_1, 155619)
L0_0 = ADDENUM
L1_1 = "DistantHerbDock2"
L0_0(L1_1, 35886)
L0_0 = ADDENUM
L1_1 = "DistantHerbPlaza"
L0_0(L1_1, 111938)
L0_0 = ADDENUM
L1_1 = "DistantHerbWoods"
L0_0(L1_1, 154781)
L0_0 = ADDENUM
L1_1 = "DistantHerbSkiHill"
L0_0(L1_1, 204430)
L0_0 = ADDENUM
L1_1 = "DistantHerbWilderness"
L0_0(L1_1, 67840)
L0_0 = ADDENUM
L1_1 = "DistantHerbRiver"
L0_0(L1_1, 44080)
L0_0 = ADDENUM
L1_1 = "HerbsNetEscape"
L0_0(L1_1, 260281)
L0_0 = ADDENUM
L1_1 = "C3_CR_PinkPuffle"
L0_0(L1_1, 198831)
L0_0 = ADDENUM
L1_1 = "C3_CR_YellowPuffle"
L0_0(L1_1, 44901)
L0_0 = ADDENUM
L1_1 = "C3_CR_PurplePuffle"
L0_0(L1_1, 90452)
L0_0 = ADDENUM
L1_1 = "C3_CR_BlackNBluePuffle"
L0_0(L1_1, 10903)
L0_0 = ADDENUM
L1_1 = "C3_IslandAnims"
L0_0(L1_1, 147452)
L0_0 = ADDENUM
L1_1 = "C4_SkiVillage_JPG"
L0_0(L1_1, 139676)
L0_0 = ADDENUM
L1_1 = "C4_SkiVillage_Herb"
L0_0(L1_1, 218573)
L0_0 = ADDENUM
L1_1 = "C4_SkiVillage_HerbTrapped"
L0_0(L1_1, 82094)
L0_0 = ADDENUM
L1_1 = "C4_SkiVillage_Rookie"
L0_0(L1_1, 116956)
L0_0 = ADDENUM
L1_1 = "C4_SkiVillage_Klutzy"
L0_0(L1_1, 155477)
L0_0 = ADDENUM
L1_1 = "C4_IceBerg_Gary"
L0_0(L1_1, 229114)
L0_0 = ADDENUM
L1_1 = "C4_IceBerg_AquaGrabber"
L0_0(L1_1, 147167)
L0_0 = ADDENUM
L1_1 = "C4_Plaza_Dot"
L0_0(L1_1, 196531)
L0_0 = ADDENUM
L1_1 = "C4_MountainTop_NPC_Dot"
L0_0(L1_1, 145221)
L0_0 = ADDENUM
L1_1 = "C4_MountainTop_NPC_JPG"
L0_0(L1_1, 240176)
L0_0 = ADDENUM
L1_1 = "C4_MountainTop_NPC_Rookie"
L0_0(L1_1, 35149)
L0_0 = ADDENUM
L1_1 = "C4_CommandRoom_NPC_Gary"
L0_0(L1_1, 171852)
L0_0 = ADDENUM
L1_1 = "C4_CommandRoom_NPC_Director"
L0_0(L1_1, 178148)
L0_0 = ADDENUM
L1_1 = "C4_MineShack_NPC_Dot"
L0_0(L1_1, 137405)
L0_0 = ADDENUM
L1_1 = "C4_MineShack_NPC_Dot2"
L0_0(L1_1, 225719)
L0_0 = ADDENUM
L1_1 = "C4_MineShack_NPC_DotEffect"
L0_0(L1_1, 145986)
L0_0 = ADDENUM
L1_1 = "C4_MineShack_NPC_Rookie"
L0_0(L1_1, 28772)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_NPC_Dot"
L0_0(L1_1, 154701)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_NPC_Rookie"
L0_0(L1_1, 154285)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_NPC_Gary"
L0_0(L1_1, 240843)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_NPC_Herbert"
L0_0(L1_1, 19998)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_NPC_JPG"
L0_0(L1_1, 260816)
L0_0 = ADDENUM
L1_1 = "C4_CommandRoom_NPC_JPG"
L0_0(L1_1, 169847)
L0_0 = ADDENUM
L1_1 = "C4_CommandRoom_NPC_Rookie"
L0_0(L1_1, 80380)
L0_0 = ADDENUM
L1_1 = "C4_CommandRoom_NPC_Dot"
L0_0(L1_1, 229609)
L0_0 = ADDENUM
L1_1 = "C4_Attic_FestivalFloat"
L0_0(L1_1, 11147)
L0_0 = ADDENUM
L1_1 = "C4_IceBerg_DuckFloat"
L0_0(L1_1, 186902)
L0_0 = ADDENUM
L1_1 = "C4_Dojo_OctopusFloat"
L0_0(L1_1, 132909)
L0_0 = ADDENUM
L1_1 = "C4_BoilerRoom_WhaleFloat"
L0_0(L1_1, 233471)
L0_0 = ADDENUM
L1_1 = "C4_Stage_PaintBucket"
L0_0(L1_1, 235774)
L0_0 = ADDENUM
L1_1 = "C4_Stage_WhiteBeard"
L0_0(L1_1, 140794)
L0_0 = ADDENUM
L1_1 = "C4_PizzaParlor_PizzaPan"
L0_0(L1_1, 169707)
L0_0 = ADDENUM
L1_1 = "C4_PizzaParlor_Mop"
L0_0(L1_1, 19966)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_LifePreserver"
L0_0(L1_1, 158508)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_BallonTorn"
L0_0(L1_1, 256124)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_BallonFixed"
L0_0(L1_1, 131735)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_BallonFilled"
L0_0(L1_1, 73354)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_WaterWings"
L0_0(L1_1, 65055)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_Tape"
L0_0(L1_1, 83372)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_LifeJacket"
L0_0(L1_1, 199993)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_Duck4Herb"
L0_0(L1_1, 29440)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_FestivalFloat"
L0_0(L1_1, 261646)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_RubberDucky"
L0_0(L1_1, 140981)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_SuperHelium"
L0_0(L1_1, 122892)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_OctoFloat"
L0_0(L1_1, 102983)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_WhaleFloat"
L0_0(L1_1, 195203)
L0_0 = ADDENUM
L1_1 = "C4_Dot_DisguiseSack_2_3"
L0_0(L1_1, 165779)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_WhiteBeard"
L0_0(L1_1, 12752)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_BlackBeard"
L0_0(L1_1, 183364)
L0_0 = ADDENUM
L1_1 = "C4_Dot_DisguiseSack_1_3"
L0_0(L1_1, 33361)
L0_0 = ADDENUM
L1_1 = "C4_Dot_DisguiseSack_Full"
L0_0(L1_1, 71290)
L0_0 = ADDENUM
L1_1 = "C4_Dot_DisguiseSack_Empty"
L0_0(L1_1, 34601)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_ObjectPile"
L0_0(L1_1, 1420)
L0_0 = ADDENUM
L1_1 = "C4_MountainTop_Item_GrapplingHook"
L0_0(L1_1, 187433)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_Item_Statue"
L0_0(L1_1, 102346)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_Item_Geyser"
L0_0(L1_1, 17971)
L0_0 = ADDENUM
L1_1 = "C4_MineShackFlood_Item_Anvil"
L0_0(L1_1, 129578)
L0_0 = ADDENUM
L1_1 = "C4_Lodge_Item_ExitDoor"
L0_0(L1_1, 255403)
L0_0 = ADDENUM
L1_1 = "C4_SportsShop_Item_ExitDoor"
L0_0(L1_1, 197561)
L0_0 = ADDENUM
L1_1 = "C4_SkiVillage_BrokenAirShip"
L0_0(L1_1, 89164)
L0_0 = ADDENUM
L1_1 = "C4_Stage_Manager"
L0_0(L1_1, 50874)
L0_0 = ADDENUM
L1_1 = "C4_GIFTSHOP_OWNER"
L0_0(L1_1, 132592)
L0_0 = ADDENUM
L1_1 = "C4_SkiBelt"
L0_0(L1_1, 38986)
L0_0 = ADDENUM
L1_1 = "C4_CutCables"
L0_0(L1_1, 38895)
L0_0 = ADDENUM
L1_1 = "C4_CablesStuck"
L0_0(L1_1, 8542)
L0_0 = ADDENUM
L1_1 = "C4_AquaLv1"
L0_0(L1_1, 36849)
L0_0 = ADDENUM
L1_1 = "C4_AquaLv2"
L0_0(L1_1, 256043)
L0_0 = ADDENUM
L1_1 = "C4_AquaLv3"
L0_0(L1_1, 218474)
L0_0 = ADDENUM
L1_1 = "C4_HerbsBalloon"
L0_0(L1_1, 144273)
L0_0 = ADDENUM
L1_1 = "C4_HerbDuck"
L0_0(L1_1, 148044)
L0_0 = ADDENUM
L1_1 = "C4_HerbVest"
L0_0(L1_1, 170957)
L0_0 = ADDENUM
L1_1 = "C4_HerbWaterwings"
L0_0(L1_1, 118950)
L0_0 = ADDENUM
L1_1 = "C4_HoleInSnowPile"
L0_0(L1_1, 24052)
L0_0 = ADDENUM
L1_1 = "C4_ScissorsBreak"
L0_0(L1_1, 127387)
L0_0 = ADDENUM
L1_1 = "C4_JackHammer"
L0_0(L1_1, 8472)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_Wig"
L0_0(L1_1, 141797)
L0_0 = ADDENUM
L1_1 = "C4_InventoryItem_SenseiHat"
L0_0(L1_1, 25189)
L0_0 = ADDENUM
L1_1 = "AnvilCrashing"
L0_0(L1_1, 69943)
L0_0 = ADDENUM
L1_1 = "AnalyzerEscapeButton"
L0_0(L1_1, 76902)
L0_0 = ADDENUM
L1_1 = "CoffeeMachineEscapeButton"
L0_0(L1_1, 176730)
L0_0 = ADDENUM
L1_1 = "DVDMachineEscapeButton"
L0_0(L1_1, 198650)
L0_0 = ADDENUM
L1_1 = "JackhammerTest0"
L0_0(L1_1, 200978)
L0_0 = ADDENUM
L1_1 = "JackhammerTest1"
L0_0(L1_1, 154172)
L0_0 = ADDENUM
L1_1 = "JackhammerTest2"
L0_0(L1_1, 51852)
L0_0 = ADDENUM
L1_1 = "JackhammerTest3"
L0_0(L1_1, 76626)
L0_0 = ADDENUM
L1_1 = "GrapplinTest0"
L0_0(L1_1, 249969)
L0_0 = ADDENUM
L1_1 = "GrapplinTest1"
L0_0(L1_1, 193117)
L0_0 = ADDENUM
L1_1 = "GrapplinTest2"
L0_0(L1_1, 175371)
L0_0 = ADDENUM
L1_1 = "GrapplinTest3"
L0_0(L1_1, 129967)
L0_0 = ADDENUM
L1_1 = "GrapplinTest4"
L0_0(L1_1, 181566)
L0_0 = ADDENUM
L1_1 = "GrapplinTest5"
L0_0(L1_1, 85273)
L0_0 = ADDENUM
L1_1 = "MazeTest3"
L0_0(L1_1, 88399)
L0_0 = ADDENUM
L1_1 = "MazeTest4"
L0_0(L1_1, 23826)
L0_0 = ADDENUM
L1_1 = "MazeTest5"
L0_0(L1_1, 78966)
L0_0 = ADDENUM
L1_1 = "MazeTest6"
L0_0(L1_1, 153458)
L0_0 = ADDENUM
L1_1 = "MazeTest7"
L0_0(L1_1, 81873)
L0_0 = ADDENUM
L1_1 = "TroughHor1Right"
L0_0(L1_1, 3462)
L0_0 = ADDENUM
L1_1 = "TroughHor1Left"
L0_0(L1_1, 3436)
L0_0 = ADDENUM
L1_1 = "TroughHor2Right"
L0_0(L1_1, 63)
L0_0 = ADDENUM
L1_1 = "TroughHor2Left"
L0_0(L1_1, 3272)
L0_0 = ADDENUM
L1_1 = "TroughVert1Top"
L0_0(L1_1, 159)
L0_0 = ADDENUM
L1_1 = "TroughVert1Bot"
L0_0(L1_1, 488)
L0_0 = ADDENUM
L1_1 = "TroughVert2Top"
L0_0(L1_1, 3373)
L0_0 = ADDENUM
L1_1 = "TroughVert2Bot"
L0_0(L1_1, 322)
L0_0 = ADDENUM
L1_1 = "TroughVert3Top"
L0_0(L1_1, 459)
L0_0 = ADDENUM
L1_1 = "TroughVert3Bot"
L0_0(L1_1, 264)
L0_0 = ADDENUM
L1_1 = "Trough_Trough"
L0_0(L1_1, 66131)
L0_0 = ADDENUM
L1_1 = "DISABLE_POPUP"
L0_0(L1_1, 1)
L0_0 = ADDENUM
L1_1 = "PRIORITY_SIDEQUEST"
L0_0(L1_1, 0)
L0_0 = ADDENUM
L1_1 = "PRIORITY_NORMAL"
L0_0(L1_1, 1)
L0_0 = ADDENUM
L1_1 = "PRIORITY_CRITICAL"
L0_0(L1_1, 2)
L0_0 = ADDENUM
L1_1 = "PRIORITY_HIGHLY_CRITICAL"
L0_0(L1_1, 3)
L0_0 = ADDENUM
L1_1 = "STORE_CAM_POS"
L0_0(L1_1, 1)
L0_0 = ADDENUM
L1_1 = "NO_STORE_CAM_POS"
L0_0(L1_1, 0)
L0_0 = ADDENUM
L1_1 = "FOREST"
L0_0(L1_1, 1)
L0_0 = ADDENUM
L1_1 = "MOUNTAIN"
L0_0(L1_1, 2)
