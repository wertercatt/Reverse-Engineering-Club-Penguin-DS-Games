local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = {}
_const = L0_0
L0_0 = {}
_coroutines = L0_0
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
runCoroutines = L0_0
function L0_0()
  local L0_27, L1_28, L2_29, L3_30, L4_31
  for L3_30, L4_31 in L0_27(L1_28) do
    print("LUA: removing coroutine:", L4_31)
    _coroutines[L3_30] = nil
  end
end
clearCoroutines = L0_0
function L0_0(A0_32)
  for _FORV_4_, _FORV_5_ in ipairs(A0_32) do
    _const[_FORV_5_] = _FORV_4_ - 1
  end
end
makeSequencedEnum = L0_0
function L0_0(A0_33, A1_34)
  local L3_35
  if A1_34 then
    L3_35 = -1
  else
    L3_35 = 0
  end
  for _FORV_7_, _FORV_8_ in ipairs(A0_33) do
    if 0 > _FORV_7_ - 1 + L3_35 then
      _const[_FORV_8_] = 0
    else
      _const[_FORV_8_] = 2 ^ (_FORV_7_ - 1 + L3_35)
    end
  end
end
function L1_1(A0_36, A1_37, A2_38)
  local L3_39, L4_40
  L3_39 = _util
  L3_39 = L3_39.GetSelf
  L3_39 = L3_39()
  function L4_40()
    _util.SetSuitcaseItemEnabled(_UPVALUE0_, true)
    _util.DisplayPopUp(_UPVALUE1_, _UPVALUE2_, "GameStrings")
    repeat
      scriptWait()
    until _util.IsPopUpVisible() == false
    _util.SetSpawn(0, _UPVALUE3_)
    _util.DelItem(_UPVALUE3_)
  end
  scriptPlay(L4_40)
end
awardClothingItem = L1_1
function L1_1(A0_41, A1_42)
  if A0_41 == 0 then
    if _util.GetVar("FP_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.FP01_Wrench, 356)
      _util.SetItemPopUpText(_id.Inventory_PizzaDessert, 412)
      _util.SetItemPopUpText(_id.Inventory_PizzaHotSauce, 413)
      _util.SetItemPopUpText(_id.Inventory_PizzaSeaWeed, 414)
      _util.SetItemPopUpText(_id.Inventory_PizzaSquid, 415)
      _util.SetItemPopUpText(_id.Inventory_FP5_PizzaDessert, 412)
      _util.SetItemPopUpText(_id.Inventory_FP5_PizzaHotSauce, 413)
      _util.SetItemPopUpText(_id.Inventory_FP5_PizzaSeaweed, 414)
      _util.SetItemPopUpText(_id.Inventory_FP5_PizzaSquid, 415)
      _util.SetItemPopUpText(_id.FPM06_InventoryBoat1, 3)
      _util.SetItemPopUpText(_id.FPM06_InventoryBoat2, 4)
      _util.SetItemPopUpText(_id.FPM06_InventoryBoat3, 5)
      _util.SetItemPopUpText(_id.Inventory_Mitten, 6)
      _util.SetItemPopUpText(_id.FPM08_Jacket, 7)
      _util.SetItemPopUpText(_id.FPM11_Pogo, 8)
      _util.SetItemPopUpText(_id.FPM11_TV, 10)
      _util.SetItemPopUpText(_id.FPM11_Guitar, 9)
      _util.SetItemPopUpText(_id.FPM11_SnowBoard, 11)
      _util.SetItemPopUpText(_id.FPM12_FlowerLow, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerLowa, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerLowb, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerLowc, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerLowd, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerLowe, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerMid, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerMida, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerMidb, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerMidc, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerMidd, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerHigh, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerHigha, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerHighb, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerHighc, 16)
      _util.SetItemPopUpText(_id.FPM12_FlowerHighd, 16)
      _util.SetItemPopUpText(_id.Inventory_Coconut_Beach, 12)
      _util.SetItemPopUpText(_id.Inventory_Coconut_Town, 13)
      _util.SetItemPopUpText(_id.Inventory_Coconut_Forest, 14)
      _util.SetItemPopUpText(_id.Inventory_Coconut_SkiHill, 15)
      _util.SetVar("FP_ITEM_SETUP", 1)
    end
  elseif A0_41 == 1 then
    if A1_42 == 1 and _util.GetVar("M1C1_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M1C1_Card1, 347)
      _util.SetItemPopUpText(_id.M1C1_Card2, 348)
      _util.SetItemPopUpText(_id.M1C1_Card3, 349)
      _util.SetItemPopUpText(_id.M1C1_Card4, 350)
      _util.SetItemPopUpText(_id.M1C1_Map, 351)
      _util.SetItemPopUpText(_id.M1C1_HatGround, 352)
      _util.SetItemPopUpText(_id.M1C1_Glasses, 353)
      _util.SetVar("M1C1_ITEM_SETUP", 1)
    elseif A1_42 == 2 and _util.GetVar("M1C2_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M1C2_TraineePin, 365)
      _util.SetItemPopUpText(_id.Doors_Dojo2Puffle, 358)
      _util.SetItemPopUpText(_id.M1C2_PuffleHandler, 359)
      _util.SetItemPopUpText(_id.M1C2_SpyPodHalf1, 361)
      _util.SetItemPopUpText(_id.M1C2_SpyPodHalf2, 362)
      _util.SetItemPopUpText(_id.M1C2_DecoderGadget, 494)
      _util.SetItemPopUpText(_id.M1C2_Antenna, 360)
      _util.SetVar("M1C2_ITEM_SETUP", 1)
    elseif A1_42 == 3 and _util.GetVar("M1C3_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M1C3_Soup, 367)
      _util.SetItemPopUpText(_id.M1C3_Trophy, 369)
      _util.SetVar("M1C3_ITEM_SETUP", 1)
    end
  elseif A0_41 == 2 then
    if A1_42 == 1 and _util.GetVar("M2C1_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.Inventory_Dossier, 370)
      _util.SetItemPopUpText(_id.Inventory_Duster, 373)
      _util.SetItemPopUpText(_id.Object_LostKey, 372)
      _util.SetVar("M2C1_ITEM_SETUP", 1)
    elseif A1_42 == 2 and _util.GetVar("M2C2_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.Inventory_PostCard, 374)
      _util.SetItemPopUpText(_id.Inventory_Pen, 375)
      _util.SetItemPopUpText(_id.Inventory_PostCardPen, 376)
      _util.SetItemPopUpText(_id.Inventory_SignedCard1, 377)
      _util.SetItemPopUpText(_id.Inventory_SignedCard2, 378)
      _util.SetItemPopUpText(_id.Inventory_SignedCard3, 379)
      _util.SetItemPopUpText(_id.Inventory_SignedCard4, 380)
      _util.SetItemPopUpText(_id.M2C2_EncodedPlans, 383)
      _util.SetItemPopUpText(_id.M2C2_MineMap, 382)
      _util.SetItemPopUpText(_id.M2C2_NotePad, 381)
      _util.SetItemPopUpText(_id.Inventory_KeyWelded, 384)
      _util.SetVar("M2C2_ITEM_SETUP", 1)
    elseif A1_42 == 3 and _util.GetVar("M2C3_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.Inventory_Flashlight, 386)
      _util.SetItemPopUpText(_id.Inventory_Balloon1, 387)
      _util.SetItemPopUpText(_id.Inventory_Balloon2, 388)
      _util.SetItemPopUpText(_id.Inventory_Balloon3, 389)
      _util.SetItemPopUpText(_id.Inventory_FullBalloon, 390)
      _util.SetItemPopUpText(_id.Inventory_WeldedCart, 385)
      _util.SetItemPopUpText(_id.M2C3_Crowbar, 624)
      _util.SetVar("M2C3_ITEM_SETUP", 1)
    end
  elseif A0_41 == 3 then
    if A1_42 == 1 and _util.GetVar("M3C1_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M3C1_BambooInv, 396)
      _util.SetItemPopUpText(_id.M3C1_OilCanInv, 395)
      _util.SetVar("M3C1_ITEM_SETUP", 1)
    elseif A1_42 == 2 and _util.GetVar("M3C2_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M3C2_oneRing, 397)
      _util.SetItemPopUpText(_id.M3C2_twoRing, 398)
      _util.SetItemPopUpText(_id.M3C2_threeRing, 399)
      _util.SetItemPopUpText(_id.Inventory_ChestKey, 400)
      _util.SetItemPopUpText(_id.M3C2_PHHat, 401)
      _util.SetVar("M3C2_ITEM_SETUP", 1)
    elseif A1_42 == 3 and _util.GetVar("M3C3_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.Inventory_Cocoa, 402)
      _util.SetItemPopUpText(_id.Inventory_OilCan, 403)
      _util.SetItemPopUpText(_id.Inventory_RoboLocator, 404)
      _util.SetVar("M3C3_ITEM_SETUP", 1)
    end
  elseif A0_41 == 4 then
    if A1_42 == 1 and _util.GetVar("M4C1_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.Inventory_RookieClue, 406)
      _util.SetItemPopUpText(_id.M4C1_JPGClue, 407)
      _util.SetItemPopUpText(_id.M4C1_HelmetClue, 408)
      _util.SetItemPopUpText(_id.M4C1_RobotomyGadget, 409)
      _util.SetItemPopUpText(_id.M4C1_UnknownGadget, 405)
      _util.SetVar("M4C1_ITEM_SETUP", 1)
    elseif A1_42 == 2 and _util.GetVar("M4C2_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.Inventory_WBot, 411)
      _util.SetItemPopUpText(_id.Inventory_CreamPie, 609)
      _util.SetVar("M4C2_ITEM_SETUP", 1)
    elseif A1_42 == 3 and _util.GetVar("M4C3_ITEM_SETUP") == 0 then
      _util.SetItemPopUpText(_id.M4C3_Fuel, 410)
      _util.SetVar("M4C3_ITEM_SETUP", 1)
    end
  elseif A0_41 == 5 and A1_42 == 1 and _util.GetVar("M5C1_ITEM_SETUP") == 0 then
    _util.SetVar("M5C1_ITEM_SETUP", 1)
  end
end
setupItems = L1_1
function L1_1(A0_43, A1_44)
  if A0_43 >= 2 or A0_43 == 0 and A1_44 >= 2 or A0_43 == 1 and A1_44 == 3 then
    _util.EnableSpyPod()
    if A0_43 == 1 and A1_44 == 3 or A0_43 == 4 and A1_44 == 3 then
      _util.DisableSpyPodFunc(_const.FLAG_HEADQUARTERS)
    end
  end
end
spypodCheck = L1_1
function L1_1(A0_45, A1_46)
end
mapCheck = L1_1
function L1_1(A0_47, A1_48)
  if A0_47 == 1 then
    if A1_48 == 2 then
      if _util.GetVar("M1C2_ComSetup") == 0 then
        _util.ClearCom()
        _util.SetupComNpc(_const.COM_DOT, _id.M1C2_Dot_CR, 0)
        _util.SetVar("M1C2_ComSetup", 1)
      end
    elseif A1_48 == 3 and _util.GetVar("M1C3_ComSetup") == 0 then
      _util.ClearCom()
      _util.SetupComNpc(_const.COM_DOT, _id.M1C3_DotSnowman, 0)
      _util.SetVar("M1C3_ComSetup", 1)
    end
  elseif A0_47 == 2 then
  elseif A0_47 == 3 then
    if A1_48 == 1 then
      if _util.GetVar("M3C1_ComSetup") == 0 then
        _util.ClearCom()
        _util.SetupComNpc(_const.COM_DOT, _id.M3C1_Dot_Mine, 0)
        _util.SetupComNpc(_const.COM_PUFFLEHANDLER, _id.M3C1_BubbleHandler, 0)
        _util.SetVar("M3C1_ComSetup", 1)
      end
    else
    end
  elseif A1_48 == 3 and A0_47 == 4 and A1_48 == 1 and _util.GetVar("M4C1_ComSetup") == 0 then
    _util.ClearCom()
    _util.SetupComNpc(_const.COM_ROOKIE, _id.M4C1_Rookie_Plaza, 0)
    _util.SetupComNpc(_const.COM_JPG, _id.M4C1_JPG_Fishing, 0)
    _util.SetupComNpc(_const.COM_DOT, _id.M4C1_Dot_NightClub, 0)
    _util.SetVar("M4C1_ComSetup", 1)
  end
end
communicatorCheck = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9
}
L2_2 = "CHANGE_DIALOG"
L3_3 = "CHANGE_ROOM"
L4_4 = "CHANGE_NPC"
L5_5 = "PLAY_CUTSCENE"
L6_6 = "END_DIALOG"
L7_7 = "UPDATE_LOOP"
L8_8 = "START_MISSION"
L9_9 = "END_MISSION"
L2_2 = makeSequencedEnum
L3_3 = L1_1
L2_2(L3_3)
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8
}
L3_3 = "DEFAULT_SETTING"
L4_4 = "THOUGHT_SETTING"
L5_5 = "CHAT_SETTING"
L6_6 = "CHAT_BOTTOM_SETTING"
L7_7 = "TALK_SETTING"
L8_8 = "NUM_CONVO_SETTING"
L3_3 = makeSequencedEnum
L4_4 = L2_2
L3_3(L4_4)
L3_3 = {
  L4_4,
  L5_5,
  L6_6
}
L4_4 = "CONTEXT_ITEM"
L5_5 = "CONTEXT_TOUCHED"
L6_6 = "CONTEXT_NPC"
L4_4 = makeSequencedEnum
L5_5 = L3_3
L4_4(L5_5)
L4_4 = {
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10
}
L5_5 = "CREATED"
L6_6 = "TOUCHED"
L7_7 = "ITEM_DROPPED"
L8_8 = "COLLIDED"
L9_9 = "COMBINE"
L10_10 = "COMMUNICATOR"
L5_5 = makeSequencedEnum
L6_6 = L4_4
L5_5(L6_6)
L5_5 = {
  L6_6,
  L7_7,
  L8_8,
  L9_9,
  L10_10
}
L6_6 = "PARTICLE_NONE"
L7_7 = "PARTICLE_FLAME"
L8_8 = "PARTICLE_WATERSPRAY"
L9_9 = "PARTICLE_RUBBLE"
L10_10 = "PARTICLE_BOATPARTS"
L6_6 = makeSequencedEnum
L7_7 = L5_5
L6_6(L7_7)
L6_6 = {
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  "ROBOTOMY",
  "FLASHLIGHT",
  "GARYS_NOTEBOOK"
}
L7_7 = "ICE_FISHING"
L8_8 = "SNOWBOARDING"
L9_9 = "CART_SURFER"
L10_10 = "DANCE_CHALLENGE"
L11_11 = "JETPACK"
L12_12 = "SNOWCAT"
L13_13 = "MECHANO_DUSTER"
L14_14 = "DECODER"
L15_15 = "JIGSAW"
L16_16 = "KEYPAD"
L7_7 = makeSequencedEnum
L8_8 = L6_6
L7_7(L8_8)
L7_7 = {
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12
}
L8_8 = "MECHANO_SNOW"
L9_9 = "MECHANO_BEANS"
L10_10 = "MECHANO_SUPER_BOT"
L11_11 = "MECHANO_MINE"
L12_12 = "MECHANO_JACKET"
L8_8 = makeSequencedEnum
L9_9 = L7_7
L8_8(L9_9)
L8_8 = {
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13
}
L9_9 = "FREEPLAY_MISSION"
L10_10 = "STORY_MISSION"
L11_11 = "SUSPECT"
L12_12 = "ROBOT"
L13_13 = "SUPER_ROBOT"
L9_9 = makeSequencedEnum
L10_10 = L8_8
L9_9(L10_10)
L9_9 = {
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  "FREEPLAY10START",
  "M1C2MISSIONSTART",
  "M1C2PUFFLETRAINERMARK",
  "M1C3MISSIONSTART",
  "M2C1MISSIONSTART",
  "M2C2MISSIONSTART",
  "M2C3MISSIONSTART",
  "M3C1MISSIONSTART",
  "M3C2MISSIONSTART",
  "M3C3MISSIONSTART",
  "M4C1MISSIONSTART",
  "M4C1AGENTLODGE",
  "M4C1AGENTPLAZA",
  "M4C1AGENTNIGHT",
  "M4C2MISSIONSTART",
  "M4C2ROBOTGIFT",
  "M4C2MISSIONEND",
  "M4C3MISSIONSTART",
  "M4C3ROBOTHILL",
  "M5C1MISSIONSTART",
  "M5C1ROBOTTOWN",
  "M5C1ROBOTDOCK",
  "M5C1ROBOTSKI",
  "M5C1ROBOTBEACH",
  "M5C1ROBOTBEACON"
}
L10_10 = "FREEPLAY1START"
L11_11 = "FREEPLAY2START"
L12_12 = "FREEPLAY4START"
L13_13 = "FREEPLAY6START"
L14_14 = "FREEPLAY7START"
L15_15 = "FREEPLAY8START"
L16_16 = "FREEPLAY9START"
L10_10 = makeSequencedEnum
L11_11 = L9_9
L10_10(L11_11)
L10_10 = {
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  "COM_ROOKIE"
}
L11_11 = "COM_NONE"
L12_12 = "COM_DOT"
L13_13 = "COM_GARY"
L14_14 = "COM_JPG"
L15_15 = "COM_PUFFLEHANDLER"
L16_16 = "COM_DIRECTOR"
L11_11 = makeSequencedEnum
L12_12 = L10_10
L11_11(L12_12)
L11_11 = {
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  "MENU",
  "MINIGAME_RESULTS",
  "MISSION",
  "LEVELSELECT",
  "SPYPOD",
  "SEQUENCECUTSCENE",
  "CATALOG",
  "MISSIONSELECT",
  "DRESSUP",
  "DL_CUTSCENE",
  "MBCHILD_STARTUP",
  "NUM_STATES"
}
L12_12 = "NONE"
L13_13 = "STARTUP"
L14_14 = "INTRO"
L15_15 = "CUTSCENE"
L16_16 = "MINIGAMES"
L12_12 = makeSequencedEnum
L13_13 = L11_11
L12_12(L13_13)
L12_12 = {
  L13_13,
  L14_14,
  L15_15,
  L16_16,
  "FLAG_ROBOTOMY",
  "FLAG_UNKNOWN",
  "FLAG_MECHANODUSTER",
  "FLAG_FLASHLIGHT",
  "FLAG_QUESTLOG",
  "FLAG_HEADQUARTERS"
}
L13_13 = "FLAG_DECODER"
L14_14 = "FLAG_COMMUNICATOR"
L15_15 = "FLAG_PUFFLEWHISTLE"
L16_16 = "FLAG_SNOWCAT"
L13_13 = L0_0
L14_14 = L12_12
L13_13(L14_14)
L13_13 = {
  L14_14,
  L15_15,
  L16_16,
  "HUD_FLAG_PUFFLESELECTOR"
}
L14_14 = "HUD_FLAG_MAP"
L15_15 = "HUD_FLAG_SPYPOD"
L16_16 = "HUD_FLAG_INVENTORY"
L14_14 = L0_0
L15_15 = L13_13
L14_14(L15_15)
L14_14 = {
  L15_15,
  L16_16,
  "FPM03",
  "FPM04",
  "FPM05",
  "FPM06",
  "FPM07",
  "FPM08",
  "FPM09",
  "FPM10",
  "SNM01",
  "SNM02",
  "SNM03",
  "SNM04"
}
L15_15 = "FPM01"
L16_16 = "FPM02"
L15_15 = L0_0
L16_16 = L14_14
L15_15(L16_16)
L15_15 = {
  L16_16,
  "FLAG_RED",
  "FLAG_BLACK",
  "FLAG_PURPLE",
  "FLAG_PINK",
  "FLAG_GREEN",
  "FLAG_YELLOW"
}
L16_16 = "FLAG_BLUE"
L16_16 = L0_0
L16_16(L15_15)
L16_16 = {
  "SPLASHSCREENS",
  "INTRO",
  "DGAMER",
  "M1C1INTRO",
  "M1C1OUTRO",
  "M1C2INTRO",
  "M1C2OUTRO",
  "M1C3INTRO",
  "M1C3OUTRO",
  "M2C1INTRO",
  "M2C1OUTRO",
  "M2C2INTRO",
  "M2C2OUTRO",
  "M2C3INTRO",
  "M2C3OUTRO",
  "M3C1INTRO",
  "M3C1OUTRO",
  "M3C2INTRO",
  "M3C2OUTRO",
  "M3C3INTRO",
  "M3C3OUTRO",
  "M4C1INTRO",
  "M4C1OUTRO",
  "M4C2INTRO",
  "M4C2OUTRO",
  "M4C3INTRO",
  "M4C3OUTRO",
  "M5C1INTRO",
  "M5C1OUTRO",
  "M5C1LAIR",
  "M5C1TOWN",
  "M5C1ROOF",
  "M5C1DOCK",
  "M5C1SKI",
  "M5C1BEACH",
  "M5C1BEACON",
  "M5C1TALL1",
  "M5C1TALL2",
  "M5C1TALL3",
  "M5C1TALL4",
  "M3C3CHALK",
  "FAKECREDITS",
  "FPM00INTRO",
  "FPM01INTRO",
  "FPM01OUTRO",
  "FPM02INTRO",
  "FPM02OUTRO",
  "FPM03INTRO",
  "FPM03OUTRO",
  "FPM04INTRO",
  "FPM04OUTRO",
  "FPM05INTRO",
  "FPM05OUTRO",
  "FPM06INTRO",
  "FPM06OUTRO",
  "FPM07INTRO",
  "FPM07OUTRO",
  "FPM08INTRO",
  "FPM08OUTRO",
  "FPM09INTRO",
  "FPM09OUTRO",
  "FPM10INTRO",
  "FPM10OUTRO",
  "ICEFISHMULLET",
  "ICEFISHCHEST",
  "ROBOTOMY101",
  "SPYGADGET101",
  "NUM_CUTSCENES"
}
makeSequencedEnum(L16_16)
_id = {
  Inventory_MechanoDuster = 1000000,
  Inventory_DecoderSpypod = 1000001,
  Inventory_RobotomyTool = 1000002,
  Inventory_SpyFlashlight = 1000003,
  Inventory_PuffleBlue = 2000000,
  Inventory_PuffleRed = 2000001,
  Inventory_PuffleBlack = 2000002,
  Inventory_PufflePurple = 2000003,
  Inventory_PufflePink = 2000004,
  Inventory_PuffleGreen = 2000005,
  Inventory_PuffleYellow = 2000006,
  Inventory_NoPuffle = 2000007,
  Inventory_Spypod = 2500000,
  SuitCase_FancyHat = 1,
  SuitCase_FancyHair = 2,
  SuitCase_Groucho = 68,
  SuitCase_SpyGlasses = 66,
  SuitCase_GaryGlasses = 8,
  SuitCase_FancyPants = 9,
  SuitCase_FancyDress = 10,
  SuitCase_ProBoard = 13,
  SuitCase_GuitarRed = 15,
  SuitCase_FancyTie = 18,
  SuitCase_FancyNecklace = 19,
  SuitCase_PuffleHat = 21,
  SuitCase_TrophyGold = 22,
  SuitCase_TophySilver = 23,
  SuitCase_SafetyVest = 55,
  SuitCase_VikingHelmet = 100,
  SuitCase_DivingHelmet = 85,
  SuitCase_SpaceHelmet = 141,
  SuitCase_HardHat = 90,
  SuitCase_MagicWand = 117,
  SuitCase_CowboyHat = 118,
  SuitCase_PropCap = 119,
  SuitCase_PaperHat = 120,
  SuitCase_EyePatch = 121,
  SuitCase_BlueShoes = 122,
  SuitCase_FireHelmet = 123,
  SuitCase_GradCap = 124,
  SuitCase_PinkShoes = 125,
  SuitCase_FairyWings = 126,
  SuitCase_HockeyHelmet = 127,
  SuitCase_PinkCape = 128,
  SuitCase_KnightHat = 129,
  SuitCase_IceSkates = 130,
  SuitCase_Sombrero = 131,
  SuitCase_FishSuit = 132,
  SuitCase_JesterHat = 133,
  SuitCase_BlueCape = 102,
  SuitCase_Supermask = 134,
  SuitCase_JesterSuit = 135,
  SuitCase_KnightArmor = 136,
  SuitCase_FireSuit = 137,
  SuitCase_ShadowGuy = 138,
  SuitCase_GammaGirl = 139,
  SuitCase_SpaceSuit = 140,
  SuitCase_PuffleDiploma = 142,
  SnowForts_ClockGearsLeft = 6656,
  SnowForts_ClockGearsRight = 40655,
  Screen_CR = 31806,
  ScreenOn_CR = 32089,
  BoomBox_GR = 33545,
  BoomBox_GR1 = 54032,
  Balloon_GR = 407,
  Balloon_GR1 = 53779,
  SportShop_Wardrobe = 41461,
  DecoderStation = 34699,
  FP_CartHard = 35617,
  FP_CartEasy = 35625,
  FP_SnowboardPenguin = 37597,
  FP_FakeStageDoorRight = 39361,
  FP_FakeStageDoorLeft = 39414,
  Doors_Beach2DockUL = 5197,
  Doors_Beach2Light = 30925,
  Doors_Beach2LightUL = 5482,
  Doors_Beach2SkiUL = 5202,
  Doors_Beacon2LightUL = 10020,
  Doors_Boiler2Pool = 48043,
  Doors_Coffee2Town = 31341,
  Doors_Command2HQ = 11765,
  Doors_CaveIntDoor2WildCave = 49695,
  Doors_Dock2Beach = 32583,
  Doors_Dock2BeachUL = 5672,
  Doors_Dock2SkiUL = 6126,
  Doors_Dock2TownUL = 5974,
  Doors_Dojo2Level = 33211,
  Doors_Dojo2Puffle = 32895,
  Doors_Fishing2Lodge = 232,
  Doors_Gadget2HQ = 229,
  Doors_Garys2Sport = 34076,
  Doors_GiftShop2Office = 50414,
  Doors_GiftShop2OfficeBroken = 50547,
  Doors_GiftShop2Town = 50473,
  Doors_GiftRoof2Office = 51366,
  Doors_HQ2Command = 34627,
  Doors_HQ2CommandAlternate = 2943,
  Doors_HQ2Gadget = 2572,
  Doors_HQ2SportUL = 2827,
  Doors_IceRink2SnowForts = 46801,
  Doors_Light2Beach = 10382,
  Doors_Lodge2SkiVillage = 166,
  Doors_MineCrash2MineInt = 24680,
  Doors_MineCrash2MineLair = 24786,
  Doors_MineInt2Minigame = 24548,
  Doors_MineInt2Pool = 35332,
  Doors_MineLair2Out = 25508,
  Doors_MineShack2MineShed = 23504,
  Doors_MineShack2MineInt = 23084,
  Doors_NightClub2Town = 48508,
  Doors_NightClub2Boiler = 48369,
  Doors_Puffle2Dojo = 39883,
  Doors_SkiHill2Test = 37643,
  Doors_SkiVillage2BeachUL = 4930,
  Doors_SkiVillage2DockUL = 4962,
  Doors_SkiVillage2SkiHillUL = 4621,
  Doors_SkiVillage2SportUL = 5066,
  Doors_Snow2IceUL = 40708,
  Doors_Snow2Plaza = 40772,
  Doors_Snow2PlazaUL = 6648,
  Doors_Snow2Town = 40915,
  Doors_Snow2TownUL = 6368,
  Doors_Sports2Garys = 20564,
  Doors_Sports2HQ = 41427,
  Doors_Sports2Ski = 4067,
  Doors_Stage2Plaza = 48915,
  Doors_Town2Dock = 41979,
  Doors_Town2DockUL = 13879,
  Doors_Town2Gift = 6890,
  Doors_Town2Night = 6738,
  Doors_Town2SnowUL = 7037,
  Doors_WildPuffle2Berry = 45051,
  Doors_WildPuffle2Cave = 44748,
  Doors_WildPuffle2Clearing = 44591,
  Doors_Wilderness2River_L = 46051,
  Doors_WildCaveDoor2CaveInt = 45854,
  Doors_WildRiverDoor2Berry = 45493,
  Doors_WildBerryDoor2River = 44219,
  M2C3_MissionDoor = 24109,
  M1C1_CommandCoachCover = 32206,
  M1C1_CommandCoachOpen = 32189,
  M1C1_NPCCoach = 32093,
  M1C1_CoffeeShopPuffle = 31598,
  M1C1_Card1 = 31510,
  M1C1_Card2 = 31674,
  M1C1_Card3 = 31464,
  M1C1_Card4 = 31692,
  M1C1_Map = 31618,
  M1C1_Hat = 40812,
  M1C1_HatGround = 40960,
  M1C1_HatGroundFake = 40939,
  M1C1_Glasses = 40476,
  M1C1_Barista = 46789,
  M1C1_CoinCountingNPC = 41701,
  M1C1_SnowFortNPC = 46790,
  M1C1_SnowFortNPC1a = 40932,
  M1C1_SnowFortNPC2 = 40746,
  M1C1_DockNPC = 32319,
  M1C1_DotSnowman = 40608,
  M1C1_DotMailbox = 46973,
  M1C1_DotMailbox2 = 39364,
  M1C1_DotInnerTubes = 46974,
  M1C1_DotEmptyTubes = 32670,
  M1C1_DotBarrel = 46975,
  M1C1_DotBarrelTalk = 42416,
  M1C2_Crate1 = 39845,
  M1C2_Crate2 = 39807,
  M1C2_TableBox = 31777,
  M1C2_TableOpen = 31767,
  M1C2_WhistleBox = 32152,
  M1C2_EmptyBox = 31939,
  M1C2_SecretCode = 32183,
  M1C2_HQMicroGameDoor = 34484,
  M1C2_Crate3 = 31774,
  M1C2_TraineePin = 33224,
  M1C2_SpyPodHalf1 = 31944,
  M1C2_SpyPodHalf2 = 32162,
  M1C2_FakeSpyPodHalf1 = 31994,
  M1C2_FakeSpyPodHalf2 = 31776,
  M1C2_Antenna = 32227,
  M1C2_DecoderGadget = 32143,
  M1C2_Dot_FPDojo = 32886,
  M1C2_Bouncer_FPDojo = 33112,
  M1C2_Dot_Dojo = 33257,
  M1C2_Bouncer_Dojo = 33171,
  M1C2_Director_Monitor = 39610,
  M1C2_Director_PTR = 39478,
  M1C2_PuffleHandler = 39542,
  M1C2_Blast = 39827,
  M1C2_Dot_SV = 40381,
  M1C2_Dot_SS = 41304,
  M1C2_Dot_HQ = 34621,
  M1C2_Dot_CR = 32030,
  M1C2_Dot_CR2 = 31899,
  M1C2_Director_CR = 32134,
  M1C3_Proboard = 46540,
  M1C3_Soup = 38659,
  M1C3_Trophy = 37588,
  M1C3_HighLevelBadge = 31996,
  M1C3_SnowCode = 43433,
  M1C3_BrokenSpyPhone = 43976,
  M1C3_NibbledOberries = 44430,
  M1C3_SnowBarricade = 44239,
  M1C3_SnowBarricade2 = 44508,
  M1C3_RiverSnowBarricade = 45236,
  M1C3_RiverSnowBarricade2 = 45376,
  M1C3_Shelter = 44905,
  M1C3_SurvivalGuideTorn = 44716,
  M1C3_SnowTracks1 = 43373,
  M1C3_SnowTracks2 = 44171,
  M1C3_SnowTracks3 = 44906,
  M1C3_SnowTracks4 = 45598,
  M1C3_Fire = 44943,
  M1C3_TableThermos = 38792,
  M1C3_Shovel = 44322,
  M1C3_ShovelInv = 44100,
  M1C3_GlassesUp = 31986,
  M1C3_DotSnowman = 40361,
  M1C3_BlazerX = 37641,
  M1C3_SickNPC = 46494,
  M1C3_SickNPCSoup = 46360,
  M1C3_SportClerk = 41414,
  M1C3_Director = 31750,
  M1C3_RookieRiver = 45246,
  M1C3_RookieRiver2 = 45142,
  M1C3_JetPackGuy_WR = 45499,
  M1C3_JetPackGuy_CR = 31834,
  M1C3_Dot_CR = 31778,
  M1C3_PizzaChefCounter = 38437,
  Inventory_Dossier = 11481,
  Inventory_Duster = 101,
  Object_CommandTable = 11432,
  Object_DossierUp = 11521,
  Object_SnowPile = 10803,
  Object_PizzaBox = 10151,
  Object_Drawer = 511,
  Object_LostKey = 10836,
  NPC_EyeScan300 = 2754,
  M2C1_Director = 11776,
  M2C1_Dot_CR = 11413,
  M2C1_JPG_CR = 11657,
  M2C1_Dot_SV = 4822,
  M2C1_Dot_SS = 3983,
  NPC_FlareSad = 16603,
  M2C2_PuffleHandler = 16493,
  M2C2_Barista = 15484,
  M2C2_EncodedPlans = 12954,
  M2C2_MineMap = 13102,
  M2C2_NotePad = 13040,
  M2C2_GR_ExitDoor = 34124,
  Object_BeanBagFixed = 15871,
  Object_SpilledBeans = 15388,
  Inventory_KeyWelded = 16896,
  Inventory_KeyBroken = 16870,
  Inventory_PostCard = 14016,
  Inventory_Pen = 15621,
  Inventory_PostCardPen = 16895,
  Inventory_SignedCard1 = 16814,
  Inventory_SignedCard2 = 16866,
  Inventory_SignedCard3 = 16600,
  Inventory_SignedCard4 = 16893,
  M2C3_Miner = 23400,
  M2C3_GarySit_MCS = 36290,
  M2C3_GaryBump_MCS = 24597,
  M2C3_GaryCart_MCS = 24912,
  M2C3_Gary_MTE = 25322,
  M2C3_Dot_CR = 22877,
  M2C3_JPG_CR = 31825,
  M2C3_Director = 22919,
  Object_TroughWater = 23197,
  Object_TroughCart = 23232,
  Object_Boulder = 24728,
  M2C3_Boulder2 = 36019,
  Object_Geyser = 24664,
  Object_Barrier = 25338,
  M2C3_Silhouette = 36421,
  Inventory_WeldedCart = 23337,
  Inventory_Balloon1 = 24648,
  Inventory_Balloon2 = 24910,
  Inventory_Balloon3 = 24725,
  Inventory_CartRope = 25064,
  Inventory_Flashlight = 24838,
  Inventory_FullBalloon = 24583,
  M2C3_Balloon1Fake = 35929,
  M2C3_Balloon2Fake = 35966,
  M2C3_Balloon3Fake = 35969,
  M2C3_BalloonsFilled = 25087,
  M2C3_RopeAttached = 36092,
  M2C3_TroughWater = 23318,
  M2C3_TroughCart = 23441,
  M2C3_Pulley1 = 24042,
  M2C3_Pulley2 = 23809,
  M2C3_SpoolWheels = 23834,
  M2C3_PulleyOnCart1 = 23297,
  M2C3_PulleyOnCart2 = 23408,
  M2C3_SpoolOnCart = 23388,
  M2C3_CrashedCart = 35892,
  M2C3_Crowbar = 36439,
  M2C3_MakeshiftCart = 35733,
  M3C1_BubbleHandler = 39573,
  M3C1_BubbleHandlerSleep = 39460,
  M3C1_DancerNPC = 48210,
  M3C1_DancerScared = 48253,
  M3C1_Director = 31887,
  M3C1_DJ_Night = 48435,
  M3C1_DJScared = 48169,
  M3C1_DJ_Boiler = 47709,
  M3C1_Doorman = 41682,
  M3C1_Dot_CR = 32193,
  M3C1_Dot_Mine = 35739,
  M3C1_FanNPC = 46839,
  M3C1_Goalie = 47104,
  M3C1_GoalieDefeated = 46834,
  M3C1_JetpackHandler = 39882,
  M3C1_Loop_Rink = 46961,
  M3C1_Manager = 49112,
  M3C1_Pop_Night = 48512,
  M3C1_PuffleHandler = 39776,
  M3C1_Rory = 49034,
  M3C1_WaitingNPC = 41636,
  M3C1_ManagerCalm = 48917,
  M3C1_RoryCalm = 49132,
  M3C1_Bamboo = 39822,
  M3C1_BambooInv = 39541,
  M3C1_Boiler = 48004,
  M3C1_FileCabinet = 47859,
  M3C1_FileCabinetBubble = 48068,
  M3C1_InnerTube_CR = 32256,
  M3C1_JackHammer = 49087,
  M3C1_JackHammerRoped = 49147,
  M3C1_Jetpack = 39549,
  M3C1_Jetpack2 = 39597,
  M3C1_JetpackRemote = 39848,
  M3C1_JetpackRoped = 39640,
  M3C1_OilCan_Boiler = 47967,
  M3C1_OilCanInv = 47875,
  M3C1_OilCan_CR = 31911,
  M3C1_Trunk = 48787,
  M3C1_WaterTrail = 47475,
  M3C1_Weight = 39912,
  M3C2_Flit_FPBeacon = 42844,
  M3C2_Flit_Beacon = 42579,
  M3C2_JPG_FPBeacon = 42633,
  M3C2_JPG_Beacon = 42580,
  M3C2_Pop_NightClub = 48512,
  M3C2_PH_TallestM = 366,
  M3C2_PH_Dojo = 33153,
  M3C2_YodelingPH_TallestM = 49305,
  M3C2_TallestM_JPG = 332,
  M3C2_PuffleTraining_PH = 39854,
  M3C2_Chirp_TallestM = 42,
  M3C2_TallestM_PHConduct = 49237,
  M3C2_Jetpack = 43007,
  M3C2_JetpackMtn = 49569,
  M3C2_JetpackNoTap = 49524,
  M3C2_PressureSwitch = 39555,
  M3C2_PressureSwitchUp = 39862,
  M3C2_Pinata = 39724,
  M3C2_Weight = 39704,
  M3C2_BubbleWeight = 39426,
  M3C2_Dome = 39660,
  M3C2_DomeShattered = 39487,
  M3C2_NormalChest = 39511,
  M3C2_Balloon = 39936,
  M3C2_Jack = 39921,
  M3C2_JackTied = 39766,
  M3C2_JackNoKey = 39885,
  M3C2_FireChest = 39777,
  M3C2_IceChest = 39538,
  Inventory_ChestKey = 39842,
  M3C2_InsideChest = 39849,
  M3C2_PHHat = 288,
  M3C2_oneRing = 49576,
  M3C2_twoRing = 49308,
  M3C2_threeRing = 49560,
  M3C2_Iceblock = 109,
  M3C2_IceblockCrack = 49512,
  M3C2_TallestM_Balloon1 = 256,
  M3C2_TallestM_Balloon2 = 123,
  M3C2_TallestM_Balloon3 = 49638,
  M3C3_Director = 31990,
  M3C3_Gary_CR = 31798,
  M3C3_Gary_CR2 = 31971,
  M3C3_Barista = 31506,
  M3C3_Rookie = 31363,
  M3C3_Gary_GR = 34069,
  M3C3_Gary_Gadget = 33354,
  M3C3_Gary_Gadget_Cat = 33791,
  M3C3_Twin = 33759,
  M3C3_Miner = 34922,
  Inventory_Cocoa = 31266,
  Inventory_OilCan = 49735,
  Inventory_RoboLocator = 35138,
  M3C3_Cocoa_1 = 35202,
  M3C3_Cocoa_2 = 45764,
  M3C3_Cocoa_3 = 45624,
  M3C3_Cocoa_4 = 45670,
  M3C3_Cocoa_5 = 45974,
  M3C3_Cocoa_6 = 45822,
  M3C3_Cocoa_7 = 45734,
  M3C3_Logs = 50161,
  M3C3_FGRock = 49893,
  M3C3_Boulder = 49815,
  M3C3_Boulder2 = 50060,
  M3C3_RobotShadow = 49792,
  M3C3_OilCan = 32171,
  M3C3_Signs = 50070,
  M3C3_SnowCat = 45796,
  M3C3_SnowCat2 = 45813,
  M3C3_SnowCat3 = 35045,
  M3C3_SnowCat0 = 33437,
  M3C3_SnowStash = 35300,
  M3C3_CocoaMachine = 31658,
  M3C3_RoboLocator = 32218,
  M3C3_InnerTube = 31811,
  M3C3_SnowCatDoor = 34595,
  M3C3_SnowCatParts = 33291,
  M3C3_SnowCatParts2 = 33648,
  M4C1_Rookie_Plaza = 39229,
  M4C1_Rookie_Weld = 39205,
  M4C1_JPG_Fishing = 471,
  M4C1_Dot_NightClub = 48182,
  M4C1_DotDone_NightClub = 48456,
  M4C1_Rory_NightClub = 48509,
  M4C1_Gary_Gadget = 33767,
  M4C1_RobotomyGadget = 33707,
  M4C1_UnknownGadget = 33504,
  Inventory_RookieClue = 39151,
  M4C1_HelmetClue = 48361,
  M4C1_JPGClue = 342,
  M4C1_Fence = 39115,
  M4C1_Jackhammer = 39167,
  M4C1_HoleInWall = 48153,
  M4C1_Rookie_Clue = 38925,
  M4C1_Plaza_Fence = 39115,
  M4C1_ClueBucket = 48424,
  M4C1_FishingHole = 30,
  M4C1_JPG_Clue = 55590,
  M4C2_Dot_GR = 33380,
  M4C2_Dot_Town = 41982,
  M4C2_Gary_GR = 33672,
  M4C2_JPG_Town = 41943,
  M4C2_WBot_Gift = 227,
  M4C2_WBot_Snow = 50282,
  M4C2_WBot_Roof = 51459,
  M4C2_WBot_RoofSnow = 51654,
  M4C2_WBot_RoofWeld = 51202,
  M4C2_WBot_RoofDead = 51648,
  Inventory_WBot = 51369,
  Inventory_CreamPie = 50706,
  M4C2_Computer = 51563,
  M4C2_Barricade = 41712,
  M4C2_BarricadeBroken = 41791,
  M4C2_BarricadeBubbled = 41911,
  M4C2_Vault = 50349,
  M4C2_VaultSteal = 50522,
  M4C2_Money = 50343,
  M4C2_ComputerParts = 50539,
  M4C3_AuntArctic = 40062,
  M4C3_Dot_SH = 37854,
  M4C3_Dot_SV = 39963,
  M4C3_JBot_Pop = 49518,
  M4C3_JBot_Far = 49226,
  M4C3_JBot_Close = 49235,
  M4C3_JBot_Down = 49471,
  M4C3_JBot_Bubble = 49279,
  M4C3_JBot_WC = 43138,
  M4C3_JBOT_WC_Talk = 43408,
  M4C3_JBOT_WC_Idle = 43485,
  M4C3_JBOT_WC_Active = 43163,
  M4C3_JPG_WC = 43229,
  M4C3_Rookie = 40105,
  M4C3_SBot_SH = 37437,
  M4C3_SBot_Slope = 460,
  M4C3_SBot_Roped = 147,
  M4C3_SBot_TM = 49445,
  M4C3_SBot_WC = 43421,
  M4C3_SBot_WC_Open = 43477,
  M4C3_Balloon1 = 49412,
  M4C3_Balloon2 = 49579,
  M4C3_Balloon3 = 49537,
  M4C3_Bag1 = 49600,
  M4C3_Bag2 = 49409,
  M4C3_Bag3 = 49651,
  M4C3_Chairlift = 37447,
  M4C3_Chairlift_SH = 37403,
  M4C3_Fuel = 43282,
  M4C3_Loot = 43462,
  M4C3_Jetpack = 43447,
  M5C1_Director = 32176,
  M5C1_Dot_Town = 41571,
  M5C1_Rookie_SkiVillage = 40029,
  M5C1_RookieNoDuck_SkiVillage = 39949,
  M5C1_GiftClerk_GiftShop = 50271,
  M5C1_Dot_Stage = 53501,
  M5C1_PH_Stage = 49037,
  M5C1_JPG_Stage = 49055,
  M5C1_Rookie_Stage = 48889,
  M5C1_Dot_StageCrash = 53474,
  M5C1_PH_StageCrash = 48681,
  M5C1_JPG_StageCrash = 49020,
  M5C1_Rookie_StageCrash = 48898,
  M5C1_Dot_GR = 33332,
  M5C1_Rookie_HQ = 34372,
  M5C1_JPG_HQ = 34409,
  M5C1_PH_HQ = 34558,
  M5C1_JPG_Lighthouse = 42012,
  M5C1_PizzaChef = 39006,
  M5C1_PetShopClerk = 38939,
  M5C1_Agent_Plaza = 39071,
  M5C1_Agent_SnowFort = 40517,
  M5C1_Gary_Town = 41749,
  M5C1_Gary_GiftRoof = 51527,
  M5C1_Gary_Beach = 31163,
  M5C1_Gary_Beacon = 42955,
  M5C1_Gary_SkiVillage = 40241,
  M5C1_Gary_Dock = 32270,
  M5C1_SuperRobot_Town = 41884,
  M5C1_SuperRobot_GiftRoof = 51362,
  M5C1_SuperRobot_Beach = 30937,
  M5C1_SuperRobot_Beacon = 42618,
  M5C1_SuperRobot_SkiVillage = 40263,
  M5C1_SuperRobot_Dock = 32744,
  M5C1_SuperRobot_TM1 = 49634,
  M5C1_SuperRobot_TM2 = 49240,
  M5C1_SuperRobot_TM3 = 49636,
  M5C1_SuperRobot_TM4 = 49554,
  M5C1_Gary_TM1 = 49206,
  M5C1_Gary_TM2 = 49533,
  M5C1_GaryFree = 51894,
  M5C1_SuperCart_Town = 41610,
  M5C1_SuperCart_Beach = 31048,
  M5C1_SuperCart_SkiVillage = 40181,
  M5C1_SuperCart_Dock = 32345,
  M5C1_Flare_SkiVillage = 40069,
  M5C1_Loop_Dock = 32603,
  M5C1_Flit_Beach = 30860,
  M5C1_Bouncer_Beacon = 42605,
  M5C1_Chirp_TallestM = 52155,
  M5C1_Pop_TallestM = 51870,
  M5C1_Beach_Rope = 30751,
  M5C1_Balloon = 42932,
  M5C1_Anvil = 42961,
  M5C1_Hole = 41661,
  M5C1_DockBoat = 32383,
  M5C1_HQRubberDuckMask = 34669,
  M5C1_MountainJetPack = 49231,
  M5C1_MountainJetPackBroken = 49627,
  FP01_Rory = 40285,
  FP01_Barista = 31507,
  FP01_Thermos = 40273,
  FP01_Wrench = 31270,
  FP01_Couch = 31357,
  FP02_NPC_MineInt = 35413,
  FP02_NPC_MineShack = 35289,
  FP03_NPC1_Forest = 369,
  FP03_NPC2_Forest = 455,
  FP03_TourGuide_Forest = 83,
  FP03_SnowTracks = 52550,
  FPM04_Pizza_Guy = 38663,
  FPM04_Pool_Guy = 47250,
  FPM04_Guitar_Guy = 42374,
  FPM04_Miner_Guy = 34969,
  FPM04_Lookout_Guy = 32551,
  FPM04_PizzaSquidFake = 38504,
  FPM04_PizzaHotSauceFake = 38795,
  FPM04_PizzaSeaWeedFake = 38571,
  FPM04_PizzaDessertFake = 38627,
  Inventory_PizzaSquid = 38490,
  Inventory_PizzaHotSauce = 38480,
  Inventory_PizzaSeaWeed = 38857,
  Inventory_PizzaDessert = 38743,
  FPM05_Aunt_Arctic = 42950,
  FPM05_Coin_Counting_NPC = 33233,
  FPM05_SnowFort_NPC1 = 40802,
  FPM05_SnowFort_NPC2 = 40895,
  FPM05_Pizza_Guy = 38892,
  FPM05_Barista = 31258,
  FPM05_CashReg = 9320,
  FPM05_PizzaSquidFake = 31244,
  FPM05_PizzaHotSauceFake = 42808,
  FPM05_PizzaDessertFake = 40809,
  FPM05_PizzaSeaweedFake = 32974,
  Inventory_FP5_PizzaSquid = 31302,
  Inventory_FP5_PizzaHotSauce = 42688,
  Inventory_FP5_PizzaSeaweed = 32963,
  Inventory_FP5_PizzaDessert = 40653,
  FPM06_LostBoatsSad = 32547,
  FPM06_LostBoatsHappy = 32347,
  FPM06_Boat1 = 32400,
  FPM06_InventoryBoat1 = 32750,
  FPM06_Boat2 = 31134,
  FPM06_InventoryBoat2 = 30841,
  FPM06_Boat3 = 53044,
  FPM06_InventoryBoat3 = 52957,
  FPM07_ForestNPC = 52625,
  FPM07_TownNPC = 41744,
  FPM07_SkiNPC = 37467,
  FPM07_MineNPC = 35786,
  FPM07_CodeForest = 52487,
  FPM07_CodeTown = 41678,
  FPM07_CodeSki = 37686,
  FPM07_CodeMine = 35760,
  FPM08_Mitten_SkiHill = 37484,
  FPM08_SkiShopClerk = 41001,
  FPM08_Goalie = 47045,
  FPM08_GoalieHappy = 47025,
  FPM08_LostJacketNPC = 39411,
  FPM08_LostJacketHappyNPC = 39028,
  FPM08_LostMitten_Plaza = 39180,
  FPM08_LostMitten_IceRink = 46856,
  FPM08_LostMitten_SportShop = 41174,
  FPM08_LostMittenHappy_Plaza = 38946,
  FPM08_LostMittenHappy_IceRink = 46673,
  FPM08_LostMittenHappy_SportShop = 41315,
  FPM08_Mitten = 37484,
  FPM08_SnowPile = 39209,
  FPM08_Jacket = 38938,
  FPM08_Wardrobe = 41056,
  FPM08_Wardrobe2 = 41403,
  FPM08_Goal = 46787,
  Inventory_Mitten = 37793,
  FPM09_Rory = 40523,
  FPM09_Fire = 46244,
  FPM09_Lamp = 35634,
  FPM09_Door = 46907,
  FPM09_Ice = 53193,
  FPM09_GroundL = 35432,
  FPM09_GroundR = 35667,
  FPM10_PetShopClerk = 37901,
  FPM10_PuffleOwner = 38103,
  FPM10_Puffle1 = 39417,
  FPM10_Puffle2 = 39310,
  FPM10_Puffle3 = 39194,
  FPM10_Puffle4 = 39356,
  FPM10_Puffle5 = 39344,
  FPM10_Puffle6 = 39424,
  FPM10_Puffle7 = 38988,
  FPM11_Santa = 41757,
  FPM11_BlazerX = 46446,
  FPM11_BlazerXHappy = 46330,
  FPM11_SickNPC = 32541,
  FPM11_GuitarGuy = 31038,
  FPM11_Agent = 40835,
  FPM11_Pogo = 41556,
  FPM11_TV = 41668,
  FPM11_Guitar = 41792,
  FPM11_SnowBoard = 41587,
  FPM12_AuntArctic = 39395,
  FPM12_FlowerLow = 39123,
  FPM12_FlowerLowa = 52555,
  FPM12_FlowerLowb = 52321,
  FPM12_FlowerLowc = 52231,
  FPM12_FlowerLowd = 30780,
  FPM12_FlowerLowe = 52305,
  FPM12_FlowerMid = 39184,
  FPM12_FlowerMida = 52525,
  FPM12_FlowerMidb = 52510,
  FPM12_FlowerMidc = 52278,
  FPM12_FlowerMidd = 52718,
  FPM12_FlowerHigh = 39331,
  FPM12_FlowerHigha = 52366,
  FPM12_FlowerHighb = 52466,
  FPM12_FlowerHighc = 52473,
  FPM12_FlowerHighd = 40745,
  FPM12_BGFlowerLow = 39353,
  FPM12_BGFlowerLowa = 52316,
  FPM12_BGFlowerLowb = 40931,
  FPM12_BGFlowerLowc = 41674,
  FPM12_BGFlowerLowd = 30791,
  FPM12_BGFlowerLowe = 32508,
  FPM12_BGFlowerMid = 40404,
  FPM12_BGFlowerMida = 37411,
  FPM12_BGFlowerMidb = 52399,
  FPM12_BGFlowerMidc = 35190,
  FPM12_BGFlowerMidd = 41912,
  FPM12_BGFlowerHigh = 32448,
  FPM12_BGFlowerHigha = 35336,
  FPM12_BGFlowerHighb = 31093,
  FPM12_BGFlowerHighc = 46700,
  FPM12_BGFlowerHighd = 40504,
  SM03_AADisguised = 48294,
  SM03_GDisguised = 48480,
  SM03_JPGDisguised = 48628,
  SM03_RookieDisguised = 48176,
  SM03_DotDisguised = 48469,
  SM03_AA = 48415,
  SM03_G = 48451,
  SM03_JPG = 48555,
  SM03_Rookie = 48473,
  SM03_Dot = 48341,
  FPM14_PizzaChef = 31326,
  FPM14_PalmTree_Beach = 30740,
  FPM14_PalmTree_Town = 41823,
  FPM14_PalmTree_Forest = 52647,
  FPM14_PalmTree_SkiHill = 37671,
  FPM14_EmptyPalmTree_Beach = 30772,
  FPM14_EmptyPalmTree_Town = 41816,
  FPM14_EmptyPalmTree_Forest = 52342,
  FPM14_EmptyPalmTree_SkiHill = 37691,
  FPM14_Coconut_Beach = 30950,
  FPM14_Coconut_Town = 41880,
  FPM14_Coconut_Forest = 52330,
  FPM14_Coconut_SkiHill = 37541,
  Inventory_Coconut_Beach = 30835,
  Inventory_Coconut_Town = 41858,
  Inventory_Coconut_Forest = 37871,
  Inventory_Coconut_SkiHill = 52474
}
