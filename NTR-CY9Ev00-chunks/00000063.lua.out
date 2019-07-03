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
if L0_0 == 4 then
  _util.AddObjective(_text.MISSION_SELECT_M4)
  _util.EnablePuffle(_id.Enable_PuffleRed)
  _util.SetCursorPos(1087, 106)
  if _util.GetVar("M8_chapterIntroComplete") == 0 then
    _util.SetVar("M8_chapterIntroComplete", 1)
  end
end
if L0_0 == 2 then
  _util.EnablePuffleWhistle()
  _util.EnablePuffle(_id.Enable_PuffleBlack)
  _util.EnablePuffle(_id.Enable_PufflePurple)
  _util.EnablePuffle(_id.Enable_PuffleRed)
  _util.EnablePuffle(_id.Enable_PuffleGreen)
  _util.ShowMap()
  _util.EnableSpyPodFunc(_const.FLAG_HEADQUARTERS)
  _util.SetPriority(1, _id.M5_Gary_Gadget)
  if _util.GetVar("M5_GaryHasCrab") == 1 then
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryCrab", _id.M5_Gary_GadgetEnd)
  elseif _util.GetVar("M5_Gary_MissionAccepted") == 1 then
    _util.SetX(1120, _id.M5_Gary_Gadget)
    _util.SetY(168, _id.M5_Gary_Gadget)
    _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryWipers", _id.M5_Gary_Gadget)
  else
    if _util.GetVar("M5_Gary_FurConversationStarted") == 1 then
      if _util.GetVar("M5_Gary_FixedFurAnalyzer") == 1 then
        _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryNoFur", _id.M5_Gary_Gadget)
      else
        _util.ChangeBaseAnim("NPC/SecretFur/Gary/Gary", _id.M5_Gary_Gadget)
      end
    else
      _util.ChangeBaseAnim("NPC/SecretFur/Gary/GaryWork", _id.M5_Gary_Gadget)
    end
    _util.SetCursorPos(1314, 104)
  end
  if _util.GetVar("M5_chapterIntroComplete") == 0 then
    _util.SetCursorPos(1314, 104)
    _util.SetVar("M5_chapterIntroComplete", 1)
  elseif _util.GetVar("furAnalyzed") == 1 then
    _util.SetVar("furAnalyzed", 2)
    _util.ActivateNpc(_id.M5_Gary_GadgetEnd, 57)
    _util.SetCursorPos(1314, 104)
  elseif _util.GetVar("dirtyFurAnalyzed") == 1 then
    _util.SetVar("dirtyFurAnalyzed", 2)
    _util.ActivateNpc(_id.M5_Gary_Gadget, 16)
    _util.SetCursorPos(1314, 104)
  elseif _util.GetVar("pinkFurAnalyzed") == 1 then
    _util.SetVar("pinkFurAnalyzed", 2)
    _util.ActivateNpc(_id.M5_Gary_Gadget, 13)
    _util.SetCursorPos(1314, 104)
  end
end
if L0_0 == 3 then
  _util.AddObjective(_text.MISSION_SELECT_M3)
  _util.SetCursorPos(536, 176)
  if _util.GetVar("GaryWorkOnMacnine") == 1 and _util.GetVar("M6_Cave_wasSnowedIn") == 0 then
    _util.DelItem(_id.M6_GaryExploded)
    _util.AddItem(_id.M6_GaryFix)
    _util.SetVar("GaryWorkOnMacnine", 2)
  elseif _util.GetVar("GaryWorkOnMacnine") == 1 then
    _util.DelItem(_id.M6_GaryExploded)
    _util.SetVar("GaryWorkOnMacnine", 2)
  end
  if _util.GetVar("LockedDoorToWilderness") == 0 then
    _util.SetVar("LockedDoorToWilderness", 1)
    _util.SetExitLocked(_id.M6_door2wilderness, true)
  end
end
if L0_0 == 5 then
  _util.AddObjective(_text.MISSION_SELECT_M5)
  _util.EnablePuffle(_id.Enable_PuffleBlue)
  _util.EnablePuffle(_id.Enable_PufflePurple)
  _util.ChangeBaseAnim("NPC/SpySeek/Gary/GaryGR", _id.M9_GaryGR, "work")
  if _util.GetVar("M9_GaryMissionAccepted") ~= 1 then
    _util.SetCursorPos(1166, 104)
  end
end
if L0_0 == 7 then
  _util.AddObjective(_text.MISSION_SELECT_M7)
  if _util.GetVar("Tele2HQ") == 1 then
    _util.HideMap()
  end
end
_util.EnableSpyPodFunc(_const.FLAG_FLASHLIGHT)
