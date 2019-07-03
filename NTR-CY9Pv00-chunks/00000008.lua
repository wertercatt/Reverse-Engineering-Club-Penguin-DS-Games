local L0_0, L1_1
L0_0 = _util
L0_0 = L0_0.GetReason
L0_0 = L0_0()
L1_1 = _const
L1_1 = L1_1.CREATED
if L0_0 == L1_1 then
end
L0_0 = _util
L0_0 = L0_0.GetConversationCount
L0_0 = L0_0()
L1_1 = _util
L1_1 = L1_1.GetReason
L1_1 = L1_1()
if L1_1 == _const.TOUCHED then
  L1_1 = _util
  L1_1 = L1_1.GetVar
  L1_1 = L1_1("C2_OpenedDoor")
  if L1_1 == 1 then
    L1_1 = _util
    L1_1 = L1_1.AddPlayerThought
    L1_1(_text.C2_HBDEN_PANEL)
  else
    function L1_1()
      _util.DisableInput()
      _util.SetVar("C2_OpenedDoor", 1)
      _util.ChangeBaseAnim("MissionObjects/M2/herbertSwitchPower", _id.C2_HBDen_Switch, "on")
      repeat
        scriptWait()
      until not _util.IsAnimPlaying(_id.C2_HBDen_Switch)
      _util.ChangeBaseAnim("MissionObjects/M2/herbertSwitchPower", _id.C2_HBDen_Switch)
      _util.EnableInput()
      _util.StartCutscene(_const.C2DOOROPENED)
      repeat
        scriptWait()
      until _util.GetGameState() ~= _const.MISSION
      repeat
        scriptWait()
      until _util.GetGameState() == _const.MISSION
      _util.SetExitLocked(_id.Doors_C2_HerbsDoor2Storage, false)
      _util.SetCursorPos(749, 142)
    end
    scriptPlay(L1_1)
  end
end
