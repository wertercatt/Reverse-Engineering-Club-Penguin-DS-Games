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
if _util.IsCommandCoachActive() and (L0_0 == 1 or L0_0 == 8 or L0_0 == 9 or L0_0 == 10) then
  _util.AddItem(_id.M1C1_NPCCoach)
  _util.DelItem(_id.M1C1_CommandCoachCover)
  _util.DelItem(_id.M1C1_CommandCoachOpen)
else
  _util.DelItem(_id.M1C1_NPCCoach)
  _util.AddItem(_id.M1C1_CommandCoachCover)
  _util.AddItem(_id.M1C1_CommandCoachOpen)
end
_util.AddObjective(_text.MISSION_SELECT_M1)
if L0_0 == 8 then
  _util.SetSpawn(0, _id.C2_ShiningLight)
  _util.SetSpawn(0, _id.C2_TwinklingLight)
  _util.ChangeBaseAnim("NPC/M3/Rookie/RookieWorried", _id.C2_CR_Rookie)
  _util.ChangeBaseAnim("NPC/M3/Gary/GaryWorried", _id.C2_CR_Gary)
  _util.ChangeBaseAnim("NPC/M3/JPG/jpgWorried", _id.C2_CR_JPG)
  _util.AddObjective(_text.MISSION_SELECT_M8)
  if _util.GetVar("EPFLogoShow") == 0 then
    _util.DelItem(_id.M1_CRScreen_EPFLogo)
  else
    _util.AddItem(_id.M1_CRScreen_EPFLogo)
  end
  if _util.GetVar("C2_Event") == _id.C2_EscapedHerbBase then
    _util.DelItem(_id.M1_CRScreen_EPFLogo)
    _util.ActivateNpc(_id.C2_CR_JPG, 100)
  end
  if _util.GetVar("C2_CR_IntrO") == 0 then
    _util.SetVar("C2_CR_IntrO", 1)
    _util.HideMap()
    _util.SetExitLocked(_id.Doors_SkiHill2Wild, true)
  end
end
if L0_0 == 9 then
  _util.HideMap()
  _util.ChangeBaseAnim("NPC/M3/Rookie/RookieWorried", _id.C3_CR_Rookie)
  _util.ChangeBaseAnim("NPC/M3/Gary/GaryWorried", _id.C3_CR_Gary)
  _util.ChangeBaseAnim("NPC/M3/JPG/jpgWorried", _id.C3_CR_JPG)
  _util.AddObjective(_text.MISSION_SELECT_M9)
  if _util.GetVar("CommandAgents") == 1 then
    _util.ChangeBaseAnim("Location/CommandRoom/scripted/Speaker_open", _id.C3_RedSpeaker1)
    _util.ChangeBaseAnim("Location/CommandRoom/scripted/Speaker_open", _id.C3_RedSpeaker2)
  end
end
if L0_0 == 2 then
  _util.AddObjective(_text.MISSION_SELECT_M2)
  _util.HideMap()
  _util.DisablePuffle(_id.Enable_PuffleRed)
  _util.DisablePuffle(_id.Enable_PuffleGreen)
end
