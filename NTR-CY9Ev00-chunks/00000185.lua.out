local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
setupItems(L0_0, L1_1)
spypodCheck(L0_0, L1_1)
mapCheck(L0_0, L1_1)
communicatorCheck(L0_0, L1_1)
if L0_0 == 3 then
  if _util.GetVar("M6_TlatorBroken") == 1 then
    _util.SetVar("GaryWorkOnMacnine", 1)
  end
  if _util.GetVar("M6_HQComplete") == 0 and _util.GetVar("M6_TlatorBroken") == 1 then
    _util.SetCursorPos(717, 100)
    _util.SetVar("M6_HQComplete", 1)
    _util.ActivateNpc(_id.M5_HQ_Klutzy, 0)
  elseif _util.GetVar("M6_SkiVillageComplete") == 1 or _util.GetVar("M6_SkiHillComplete") == 1 or _util.GetVar("M6_SportComplete") == 1 then
    _util.DelItem(_id.M5_HQ_Klutzy)
  end
end
if L0_0 == 5 then
  if _util.GetVar("M9_kite") == 1 and _util.GetVar("M9_duck") == 1 and _util.GetVar("M9_cart") == 1 and _util.GetVar("M9_HQGaryMap") == 0 then
    _util.AddItem(_id.M9_HQMap)
    _util.AddItem(_id.M9_GaryMapHQ)
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryHQMachine", _id.M9_GaryMapHQ)
    _util.SetSpawn(0, _id.M9_GaryGR)
    _util.SetVar("M9_HQGaryMap", 1)
    _util.ClearCom()
  elseif _util.GetVar("M9_phonePlaced") == 1 and _util.GetVar("M9_HQGaryEnd") == 0 then
    _util.AddItem(_id.M9_GaryHQ)
    _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryHQButton", _id.M9_GaryHQ)
    _util.AddItem(_id.M9_StaticScreen)
    _util.DelItem(_id.M9_GaryMapHQ)
    _util.SetVar("M9_HQGaryEnd", 1)
    _util.ClearCom()
  end
end
if L0_0 == 6 then
  _util.AddObjective(_text.MISSION_SELECT_M6)
  if _util.GetVar("M10_GaryDrawingDone") == 1 then
    _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQ", _id.M10_GaryDrawing)
  else
    _util.ChangeBaseAnim("NPC/WaddleSquad/Gary/gHQDraw", _id.M10_GaryDrawing)
    _util.SetCursorPos(1166, 104)
  end
end
if L0_0 == 7 then
  _util.EnableSpyPodFunc(_const.FLAG_DECODER)
  if _util.GetVar("M11_Intro") == 0 then
    _util.SetVar("M11_Intro", 1)
    _util.SetCursorPos(990, 110)
    _util.AddItem(_id.M9_StaticScreen)
    _util.SetExitLocked(_id.Doors_HQ2SportUL, true)
    _util.HideMap()
  end
  if _util.GetVar("RemoveSheetOnExit") == 1 then
    _util.DelItem(_id.M11_Cloth)
  end
  if _util.GetVar("M11_ComHQ") == 1 then
    _util.SetConversationCount(22, _id.M11_HQGaryScreen)
    _util.SetVar("M11_ComHQ", 2)
  end
  if _util.GetVar("SawCornCob") == 1 and _util.GetVar("TalkedtoVillageNPCs") == 1 then
    _util.SetVar("SawCornCob", 2)
  end
  if _util.GetVar("Tele2HQ") == 1 then
    _util.SetVar("Tele2HQ", 2)
    _util.DelItem(_id.M11_HQGaryScreen)
    _util.DelItem(_id.M11_HQ_Rookie)
    _util.AddItem(_id.M11_HQRookieEscape)
    _util.AddItem(_id.M11_HQGaryEscape)
    _util.AddItem(_id.M11_HQ_JPG)
    _util.AddItem(_id.M11_CR_Book)
    _util.ChangeBaseAnim("NPC/M11/Gary/GaryHQ5", _id.M11_HQGaryEscape, "panic")
    _util.ChangeBaseAnim("NPC/M11/Rookie/RookieHQ", _id.M11_HQRookieEscape, "panic")
    _util.SetCursorPos(1232, 116)
    _util.ActivateNpc(_id.M11_HQGaryEscape, 31)
  end
end
_util.EnableSpyPodFunc(_const.FLAG_FLASHLIGHT)
