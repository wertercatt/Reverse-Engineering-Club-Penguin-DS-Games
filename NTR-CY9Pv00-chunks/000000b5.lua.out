local L0_0, L1_1, L2_2, L3_3
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetActiveMission
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetActiveChapter
L1_1 = L1_1()
L2_2 = _util
L2_2 = L2_2.GetConversationCount
L2_2 = L2_2()
L3_3 = _util
L3_3 = L3_3.GetReason
L3_3 = L3_3()
if L3_3 == _const.TOUCHED then
  function L3_3()
    _util.StartMiniGame(_const.COLORWHEEL, 0)
    repeat
      scriptWait()
    until _util.GetGameState() ~= _const.MISSION
    repeat
      scriptWait()
    until _util.GetGameState() == _const.MISSION
    _util.DisableInput()
    _util.SetVar("m11_colorWheelDoorMinigame", _util.GetMinigameOutput1())
    if _util.GetMinigameOutput1() == 1 then
      _util.SetExitLocked(_id.Doors_HQ2Command, false)
      _util.DelItem(_id.M11_CR_DoorPanel)
      _util.DelItem(_id.M11_CRDoor_Notepad)
      _util.ChangeBaseAnim("Location/HeadQuarters/state/HeadQuartersDoor2Command", _id.Doors_HQ2Command, "opening")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.Doors_HQ2Command)
      _util.ChangeBaseAnim("Location/HeadQuarters/state/HeadQuartersDoor2Command", _id.Doors_HQ2Command, "open")
      _util.AddItem(_id.M11_HQDotEscape)
      _util.ActivateNpc(_id.M11_HQDotEscape, 0)
    end
    _util.EnableInput()
  end
  if _util.GetVar("m11_colorWheelDoorMinigame") ~= 1 then
    scriptPlay(L3_3)
  end
end
